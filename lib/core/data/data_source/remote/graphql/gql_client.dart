import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_http_logger/talker_http_logger.dart';
import 'package:test_3/core/data/utils/constants.dart';

class GqlClient {
  GqlClient(this.getToken, this.talker);

  final Talker talker;
  final Future<String?> Function() getToken;

  GraphQLClient get client {
    final talkerLogger = TalkerHttpLogger(
      talker: talker,
      settings: const TalkerHttpLoggerSettings(printResponseData: true),
    );
    final client = InterceptedClient.build(interceptors: [talkerLogger]);

    final httpLink = HttpLink(Constants.apiUrl, httpClient: client);

    final authLink = AuthLink(
      getToken: () async {
        final token = await getToken();
        return token != null ? 'Bearer $token' : null;
      },
    );
    final errorLink = ErrorLink(
      onGraphQLError: (request, forward, response) {
        if (response.errors != null) {
          for (final err in response.errors!) {
            talker.error(
              '\nGraphQL Error:\t${err.message}\nextensions:\n\t\t${err.extensions?.entries.where((e) => e.key != 'exception').map((e) => '${e.key}: ${e.value}').join(', ')}',
            );
          }
        }
        return forward(request);
      },
      onException: (request, forward, LinkException exception) {
        final res = exception as HttpLinkServerException;
        talker.error(
          'Network/Link Exception:\n${res.parsedResponse?.errors?.map((e) => e.message)}',
        );
        return forward(request);
      },
    );
    final link = errorLink.concat(authLink).concat(httpLink);

    return GraphQLClient(
      link: link,
      cache: GraphQLCache(store: InMemoryStore()),
    );
  }
}
