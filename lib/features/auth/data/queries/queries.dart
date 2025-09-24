import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:test_3/core/data/data_source/remote/graphql/queries.graphql.dart';
import 'package:test_3/core/data/data_source/remote/graphql/schema.graphql.dart';
import 'package:test_3/core/data/data_source/remote/remote_data_source.dart';
import 'package:test_3/core/data/utils/handle_problem.dart';
import 'package:test_3/features/auth/domain/models/sign_response/sign_response.dart';
import 'package:test_3/features/profile/domain/models/user/user_model.dart';

mixin AuthQueries on RemoteDataSource {
  @override
  Future<UserModel> signUp({
    required String email,
    required String password,
    required String passwordConfirm,
  }) async {
    final variables = Variables$Mutation$SignUp(
      input: Input$SignUpRequest(
        email: email,
        password: password,
        passwordConfirm: passwordConfirm,
      ),
    );
    final options = Options$Mutation$SignUp(variables: variables);
    final response = await graphClient.mutate$SignUp(options);

    if (response.hasException) throw Exception(response.exception.toString());

    final data = response.parsedData;
    if (data == null) throw Exception("Empty response");

    final problem = data.userSignUp.problem;
    handleProblem(problem, talker);

    final model = SignResponse.fromJson(data.userSignUp.toJson());
    await local.saveToken(model.token);
    return model.user;
  }

  @override
  Future<UserModel> signIn({required String email, required String password}) async {
    final variables = Variables$Mutation$SignIn(
      input: Input$SignInRequest(email: email, password: password),
    );
    final options = Options$Mutation$SignIn(variables: variables);
    final response = await graphClient.mutate$SignIn(options);

    if (response.hasException) {
      throw Exception(response.exception?.graphqlErrors);
    }

    final data = response.parsedData;
    if (data == null) throw Exception("Empty response");

    final problem = data.userSignIn.problem;
    handleProblem(problem, talker);

    final model = SignResponse.fromJson(data.userSignIn.toJson());
    await local.saveToken(model.token);
    return model.user;
  }

  @override
  Future<UserModel> getCurrentUser() async {
    final options = Options$Query$GetCurrentUser(fetchPolicy: FetchPolicy.networkOnly);
    final response = await graphClient.query$GetCurrentUser(options);
    if (response.hasException) throw Exception(response.exception.toString());

    final data = response.parsedData;
    if (data == null) throw Exception("Empty response");

    final model = UserModel.fromJson(data.userMe.toJson());
    return model;
  }
}
