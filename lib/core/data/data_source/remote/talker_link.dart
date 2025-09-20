import 'dart:async';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:talker_flutter/talker_flutter.dart';

class TalkerLink extends Link {
  TalkerLink({required this.talker});
  final Talker talker;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    if (forward == null) {
      throw StateError('No forward link provided to TalkerLink');
    }

    final start = DateTime.now();

    talker.info('GraphQL Request: ${request.operation.operationName}');
    talker.debug('Variables: ${request.variables}');

    final responseStream = forward(request);

    return responseStream.transform(
      StreamTransformer.fromHandlers(
        handleData: (response, sink) {
          final duration = DateTime.now().difference(start);
          talker.info(
            'GraphQL Response (${request.operation.operationName}) in ${duration.inMilliseconds} ms',
          );

          if (response.data != null) {
            talker.debug('Data: ${response.data}');
          }

          if (response.errors != null && response.errors!.isNotEmpty) {
            for (final error in response.errors!) {
              talker.error('GraphQL Error: ${error.message}');
            }
          }

          sink.add(response);
        },
        handleError: (error, stackTrace, sink) {
          talker.error('GraphQL Stream Error: $error');
          sink.addError(error, stackTrace);
        },
      ),
    );
  }
}
