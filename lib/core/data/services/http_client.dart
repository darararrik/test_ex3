import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';

import 'package:test_3/core/data/utils/constants.dart';

class HttpClient {
  HttpClient(this._getToken);

  final Future<String?> Function() _getToken;

  Future<Map<String, String>> _defaultHeaders({
    String contentType = 'application/json',
  }) async {
    final token = await _getToken();
    return {
      'Content-Type': contentType,
      if (token != null) 'Authorization': 'Bearer $token',
    };
  }

  Future<String> _getSignedUrl(String fileName, String fileCategory) async {
    final uri = Uri.parse(
      '${Constants.uploadImageUrl}/v1/aws/signed-url',
    ).replace(queryParameters: {'fileName': fileName, 'fileCategory': fileCategory});

    final response = await http.get(uri, headers: await _defaultHeaders());

    if (response.statusCode != 200) {
      throw Exception('Failed to get signed URL: ${response.body}');
    }

    return response.body;
  }

  Future<String> uploadFile(XFile file, String fileCategory) async {
    final fileName = Uri.file(file.path).pathSegments.last;
    final signedUrl = await _getSignedUrl(fileName, fileCategory);

    final bytes = await file.readAsBytes();
    final mimeType = lookupMimeType(file.path) ?? 'application/octet-stream';

    final putResponse = await http.put(
      Uri.parse(signedUrl),
      headers: await _defaultHeaders(contentType: mimeType),
      body: bytes,
    );

    if (putResponse.statusCode < 200 || putResponse.statusCode >= 300) {
      throw Exception(
        'File upload failed: ${putResponse.statusCode}, body: ${putResponse.body}',
      );
    }

    final cleanUri = Uri.parse(signedUrl).replace(query: '').toString();
    return cleanUri;
  }
}
