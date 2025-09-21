import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import 'package:test_3/core/data/utils/constants.dart';

class HttpClient {
  HttpClient(this.getToken);
  final Future<String?> Function() getToken;

  Future<String> _getSignedUrl(String fileName, String fileCategory) async {
    final token = await getToken();
    final uri = Uri.parse(
      '${Constants.uploadImageUrl}/v1/aws/signed-url',
    ).replace(queryParameters: {'fileName': fileName, 'fileCategory': fileCategory});

    final response = await http.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
        if (token != null) 'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get signed URL: ${response.body}');
    }

    return response.body;
  }

  Future<String> uploadFile(XFile file, String fileCategory) async {
    final token = await getToken();

    final fileName = Uri.file(file.path).pathSegments.last;
    final signedUrl = await _getSignedUrl(fileName, fileCategory);

    final bytes = await file.readAsBytes();

    final putResponse = await http.put(
      Uri.parse(signedUrl),
      headers: {
        'Content-Type': 'image/png',
        if (token != null) 'Authorization': 'Bearer $token',
      },
      body: bytes,
    );
    if (putResponse.statusCode < 200 || putResponse.statusCode >= 300) {
      throw Exception('File upload failed: ${putResponse.statusCode}');
    }

    final uri = Uri.parse(signedUrl).replace(query: '');
    final cleanUri = uri.toString();

    return cleanUri;
  }
}
