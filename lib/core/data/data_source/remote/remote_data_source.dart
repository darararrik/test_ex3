import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:test_3/core/data/data_source/data_source.dart';
import 'package:test_3/core/data/data_source/remote/mock.dart';
import 'package:test_3/core/data/utils/constants.dart';
import 'package:test_3/features/post/data/queries/queries.dart';

class RemoteDataSource extends MockRemoteDataSource {
  RemoteDataSource(this.local);

  final LocalDataSource local;

  late final GraphQLClient client = GqlClient(() => local.getToken()).client;
}

class Remote extends RemoteDataSource {
  Remote(super.local);
}

class GqlClient {
  GqlClient(this.getToken);

  final Future<String?> Function() getToken;

  GraphQLClient get client {
    final httpLink = HttpLink(Constants.apiUrl);

    final authLink = AuthLink(
      getToken: () async {
        final token = await getToken();
        return token != null ? 'Bearer $token' : null;
      },
    );

    final link = authLink.concat(httpLink);

    return GraphQLClient(
      link: link,
      cache: GraphQLCache(store: InMemoryStore()),
    );
  }
}
