import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_http_logger/talker_http_logger.dart';

import 'package:test_3/core/data/services/talker_link.dart';
import 'package:test_3/core/data/utils/constants.dart';

class GqlClient {
  factory GqlClient(Future<String?> Function() getToken, Talker talker) {
    return _instance ??= GqlClient._internal(getToken, talker);
  }
  GqlClient._internal(this.getToken, this.talker)
    : client = GraphQLClient(
        link: _createLinks(getToken, talker),
        cache: GraphQLCache(store: InMemoryStore()),
      );

  static GqlClient? _instance;

  final Talker talker;
  final Future<String?> Function() getToken;
  final GraphQLClient client;

  /// Метод для настройки всех линков
  static Link _createLinks(Future<String?> Function() getToken, Talker talker) {
    final talkerLink = TalkerLink(talker: talker);

    final authLink = AuthLink(
      getToken: () async {
        final token = await getToken();
        return token != null ? 'Bearer $token' : null;
      },
    );

    final errorLink = ErrorLink(
      onGraphQLError: (request, forward, response) {
        response.errors?.forEach((err) {
          talker.error(
            '\nGraphQL Error: ${err.message}\nExtensions: ${err.extensions?.entries.where((e) => e.key != 'exception').map((e) => '${e.key}: ${e.value}').join(', ')}',
          );
        });
        return forward(request);
      },
      onException: (request, forward, LinkException exception) {
        if (exception is HttpLinkServerException) {
          talker.error(
            'Network/Link Exception: ${exception.parsedResponse?.errors?.map((e) => e.message)}',
          );
        } else {
          talker.error('Other Link Exception: $exception');
        }
        return forward(request);
      },
    );

    final httpClient = InterceptedClient.build(
      interceptors: [
        TalkerHttpLogger(
          talker: talker,
          settings: const TalkerHttpLoggerSettings(
            printResponseData: true,
            printResponseMessage: true,
          ),
        ),
      ],
    );

    final httpLink = HttpLink(Constants.apiUrl, httpClient: httpClient);

    return Link.from([talkerLink, errorLink, authLink, httpLink]);
  }
}
