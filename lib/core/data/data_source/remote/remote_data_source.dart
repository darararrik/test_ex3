import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'package:test_3/core/data/data_source/data_source.dart';
import 'package:test_3/core/data/data_source/remote/mock.dart';
import 'package:test_3/core/data/services/gql_client.dart';
import 'package:test_3/core/data/services/http_client.dart';
import 'package:test_3/features/auth/data/queries/queries.dart';
import 'package:test_3/features/post/data/queries/queries.dart';
import 'package:test_3/features/profile/data/queries/queries.dart';

class RemoteDataSource extends MockRemoteDataSource {
  RemoteDataSource(this.local, this.talker);
  final Talker talker;
  final LocalDataSource local;
  late final HttpClient httpClient = HttpClient(() => local.getToken());
  late final GraphQLClient graphClient = GqlClient(() => local.getToken(), talker).client;
}

class RemoteFull extends RemoteDataSource with AuthQueries, PostQueries, ProfileQueries {
  RemoteFull(super.local, super.talker);
}
