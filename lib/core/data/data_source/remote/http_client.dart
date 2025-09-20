import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:test_3/core/data/utils/constants.dart';

class HttpClient {
  HttpClient(this.getToken, this.talker);
  final Future<String?> Function() getToken;
  final Talker talker;

  Future<String> _getSignedUrl(String fileName, String fileCategory) async {
    final token = await getToken();
    final uri = Uri.parse(
      '${Constants.uploadImageUrl}/v1/aws/signed-url',
    ).replace(queryParameters: {'fileName': fileName, 'fileCategory': fileCategory});

    talker.info('GET SignedUrl → $uri');

    final response = await http.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
        if (token != null) 'Authorization': 'Bearer $token',
      },
    );

    talker.debug('Response [${response.statusCode}]: ${response.body}');

    if (response.statusCode != 200) {
      talker.error('Failed to get signed URL: ${response.body}');
      throw Exception('Failed to get signed URL: ${response.body}');
    }

    return response.body;
  }

  Future<String> uploadFile(XFile file, String fileCategory) async {
    final token = await getToken();

    final fileName = Uri.file(file.path).pathSegments.last;
    talker.info('Uploading file: $fileName ($fileCategory)');

    final signedUrl = await _getSignedUrl(fileName, fileCategory);

    final bytes = await file.readAsBytes();
    talker.debug('File size: ${bytes.length} bytes');

    final putResponse = await http.put(
      Uri.parse(signedUrl),
      headers: {
        'Content-Type': 'image/png', // TODO: определить mime динамически
        if (token != null) 'Authorization': 'Bearer $token',
      },
      body: bytes,
    );

    talker.debug('PUT Response [${putResponse.statusCode}]');

    if (putResponse.statusCode < 200 || putResponse.statusCode >= 300) {
      talker.error('File upload failed: ${putResponse.statusCode}');
      throw Exception('File upload failed: ${putResponse.statusCode}');
    }

    final uri = Uri.parse(signedUrl).replace(query: '');
    final cleanUri = uri.toString();
    talker.info('Upload success → $cleanUri');

    return cleanUri;
  }
}
