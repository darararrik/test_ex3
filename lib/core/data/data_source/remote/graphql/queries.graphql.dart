import 'dart:async';
import 'fragments.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Variables$Mutation$SignIn {
  factory Variables$Mutation$SignIn({required Input$SignInRequest input}) =>
      Variables$Mutation$SignIn._({r'input': input});

  Variables$Mutation$SignIn._(this._$data);

  factory Variables$Mutation$SignIn.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SignInRequest.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$SignIn._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SignInRequest get input => (_$data['input'] as Input$SignInRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SignIn<Variables$Mutation$SignIn> get copyWith =>
      CopyWith$Variables$Mutation$SignIn(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SignIn ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$SignIn<TRes> {
  factory CopyWith$Variables$Mutation$SignIn(
    Variables$Mutation$SignIn instance,
    TRes Function(Variables$Mutation$SignIn) then,
  ) = _CopyWithImpl$Variables$Mutation$SignIn;

  factory CopyWith$Variables$Mutation$SignIn.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SignIn;

  TRes call({Input$SignInRequest? input});
}

class _CopyWithImpl$Variables$Mutation$SignIn<TRes>
    implements CopyWith$Variables$Mutation$SignIn<TRes> {
  _CopyWithImpl$Variables$Mutation$SignIn(this._instance, this._then);

  final Variables$Mutation$SignIn _instance;

  final TRes Function(Variables$Mutation$SignIn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$SignIn._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SignInRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SignIn<TRes>
    implements CopyWith$Variables$Mutation$SignIn<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SignIn(this._res);

  TRes _res;

  call({Input$SignInRequest? input}) => _res;
}

class Mutation$SignIn {
  Mutation$SignIn({required this.userSignIn, this.$__typename = 'Mutation'});

  factory Mutation$SignIn.fromJson(Map<String, dynamic> json) {
    final l$userSignIn = json['userSignIn'];
    final l$$__typename = json['__typename'];
    return Mutation$SignIn(
      userSignIn: Mutation$SignIn$userSignIn.fromJson(
        (l$userSignIn as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SignIn$userSignIn userSignIn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userSignIn = userSignIn;
    _resultData['userSignIn'] = l$userSignIn.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userSignIn = userSignIn;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userSignIn, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SignIn || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userSignIn = userSignIn;
    final lOther$userSignIn = other.userSignIn;
    if (l$userSignIn != lOther$userSignIn) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignIn on Mutation$SignIn {
  CopyWith$Mutation$SignIn<Mutation$SignIn> get copyWith =>
      CopyWith$Mutation$SignIn(this, (i) => i);
}

abstract class CopyWith$Mutation$SignIn<TRes> {
  factory CopyWith$Mutation$SignIn(
    Mutation$SignIn instance,
    TRes Function(Mutation$SignIn) then,
  ) = _CopyWithImpl$Mutation$SignIn;

  factory CopyWith$Mutation$SignIn.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignIn;

  TRes call({Mutation$SignIn$userSignIn? userSignIn, String? $__typename});
  CopyWith$Mutation$SignIn$userSignIn<TRes> get userSignIn;
}

class _CopyWithImpl$Mutation$SignIn<TRes>
    implements CopyWith$Mutation$SignIn<TRes> {
  _CopyWithImpl$Mutation$SignIn(this._instance, this._then);

  final Mutation$SignIn _instance;

  final TRes Function(Mutation$SignIn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userSignIn = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SignIn(
      userSignIn: userSignIn == _undefined || userSignIn == null
          ? _instance.userSignIn
          : (userSignIn as Mutation$SignIn$userSignIn),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SignIn$userSignIn<TRes> get userSignIn {
    final local$userSignIn = _instance.userSignIn;
    return CopyWith$Mutation$SignIn$userSignIn(
      local$userSignIn,
      (e) => call(userSignIn: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SignIn<TRes>
    implements CopyWith$Mutation$SignIn<TRes> {
  _CopyWithStubImpl$Mutation$SignIn(this._res);

  TRes _res;

  call({Mutation$SignIn$userSignIn? userSignIn, String? $__typename}) => _res;

  CopyWith$Mutation$SignIn$userSignIn<TRes> get userSignIn =>
      CopyWith$Mutation$SignIn$userSignIn.stub(_res);
}

const documentNodeMutationSignIn = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SignIn'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SignInRequest'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'userSignIn'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'problem'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                          on: NamedTypeNode(
                            name: NameNode(
                              value: 'EmailOrPasswordIncorrectProblem',
                            ),
                            isNonNull: false,
                          ),
                        ),
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'message'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'token'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'User'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionUser,
  ],
);
Mutation$SignIn _parserFn$Mutation$SignIn(Map<String, dynamic> data) =>
    Mutation$SignIn.fromJson(data);
typedef OnMutationCompleted$Mutation$SignIn =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$SignIn?);

class Options$Mutation$SignIn extends graphql.MutationOptions<Mutation$SignIn> {
  Options$Mutation$SignIn({
    String? operationName,
    required Variables$Mutation$SignIn variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignIn? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignIn? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignIn>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$SignIn(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationSignIn,
         parserFn: _parserFn$Mutation$SignIn,
       );

  final OnMutationCompleted$Mutation$SignIn? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$SignIn
    extends graphql.WatchQueryOptions<Mutation$SignIn> {
  WatchOptions$Mutation$SignIn({
    String? operationName,
    required Variables$Mutation$SignIn variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignIn? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeMutationSignIn,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$SignIn,
       );
}

extension ClientExtension$Mutation$SignIn on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SignIn>> mutate$SignIn(
    Options$Mutation$SignIn options,
  ) async => await this.mutate(options);
  graphql.ObservableQuery<Mutation$SignIn> watchMutation$SignIn(
    WatchOptions$Mutation$SignIn options,
  ) => this.watchMutation(options);
}

class Mutation$SignIn$HookResult {
  Mutation$SignIn$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$SignIn runMutation;

  final graphql.QueryResult<Mutation$SignIn> result;
}

Mutation$SignIn$HookResult useMutation$SignIn([
  WidgetOptions$Mutation$SignIn? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$SignIn(),
  );
  return Mutation$SignIn$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SignIn> useWatchMutation$SignIn(
  WatchOptions$Mutation$SignIn options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SignIn
    extends graphql.MutationOptions<Mutation$SignIn> {
  WidgetOptions$Mutation$SignIn({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignIn? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignIn? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignIn>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$SignIn(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationSignIn,
         parserFn: _parserFn$Mutation$SignIn,
       );

  final OnMutationCompleted$Mutation$SignIn? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$SignIn =
    graphql.MultiSourceResult<Mutation$SignIn> Function(
      Variables$Mutation$SignIn, {
      Object? optimisticResult,
      Mutation$SignIn? typedOptimisticResult,
    });
typedef Builder$Mutation$SignIn =
    widgets.Widget Function(
      RunMutation$Mutation$SignIn,
      graphql.QueryResult<Mutation$SignIn>?,
    );

class Mutation$SignIn$Widget extends graphql_flutter.Mutation<Mutation$SignIn> {
  Mutation$SignIn$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SignIn? options,
    required Builder$Mutation$SignIn builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$SignIn(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Mutation$SignIn$userSignIn {
  Mutation$SignIn$userSignIn({
    this.problem,
    this.token,
    this.user,
    this.$__typename = 'SignInResponse',
  });

  factory Mutation$SignIn$userSignIn.fromJson(Map<String, dynamic> json) {
    final l$problem = json['problem'];
    final l$token = json['token'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$SignIn$userSignIn(
      problem: l$problem == null
          ? null
          : Mutation$SignIn$userSignIn$problem.fromJson(
              (l$problem as Map<String, dynamic>),
            ),
      token: (l$token as String?),
      user: l$user == null
          ? null
          : Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SignIn$userSignIn$problem? problem;

  final String? token;

  final Fragment$User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$problem = problem;
    _resultData['problem'] = l$problem?.toJson();
    final l$token = token;
    _resultData['token'] = l$token;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$problem = problem;
    final l$token = token;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$problem, l$token, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SignIn$userSignIn ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$problem = problem;
    final lOther$problem = other.problem;
    if (l$problem != lOther$problem) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignIn$userSignIn
    on Mutation$SignIn$userSignIn {
  CopyWith$Mutation$SignIn$userSignIn<Mutation$SignIn$userSignIn>
  get copyWith => CopyWith$Mutation$SignIn$userSignIn(this, (i) => i);
}

abstract class CopyWith$Mutation$SignIn$userSignIn<TRes> {
  factory CopyWith$Mutation$SignIn$userSignIn(
    Mutation$SignIn$userSignIn instance,
    TRes Function(Mutation$SignIn$userSignIn) then,
  ) = _CopyWithImpl$Mutation$SignIn$userSignIn;

  factory CopyWith$Mutation$SignIn$userSignIn.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignIn$userSignIn;

  TRes call({
    Mutation$SignIn$userSignIn$problem? problem,
    String? token,
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Mutation$SignIn$userSignIn$problem<TRes> get problem;
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Mutation$SignIn$userSignIn<TRes>
    implements CopyWith$Mutation$SignIn$userSignIn<TRes> {
  _CopyWithImpl$Mutation$SignIn$userSignIn(this._instance, this._then);

  final Mutation$SignIn$userSignIn _instance;

  final TRes Function(Mutation$SignIn$userSignIn) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? problem = _undefined,
    Object? token = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SignIn$userSignIn(
      problem: problem == _undefined
          ? _instance.problem
          : (problem as Mutation$SignIn$userSignIn$problem?),
      token: token == _undefined ? _instance.token : (token as String?),
      user: user == _undefined ? _instance.user : (user as Fragment$User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SignIn$userSignIn$problem<TRes> get problem {
    final local$problem = _instance.problem;
    return local$problem == null
        ? CopyWith$Mutation$SignIn$userSignIn$problem.stub(_then(_instance))
        : CopyWith$Mutation$SignIn$userSignIn$problem(
            local$problem,
            (e) => call(problem: e),
          );
  }

  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$User.stub(_then(_instance))
        : CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$SignIn$userSignIn<TRes>
    implements CopyWith$Mutation$SignIn$userSignIn<TRes> {
  _CopyWithStubImpl$Mutation$SignIn$userSignIn(this._res);

  TRes _res;

  call({
    Mutation$SignIn$userSignIn$problem? problem,
    String? token,
    Fragment$User? user,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SignIn$userSignIn$problem<TRes> get problem =>
      CopyWith$Mutation$SignIn$userSignIn$problem.stub(_res);

  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
}

class Mutation$SignIn$userSignIn$problem {
  Mutation$SignIn$userSignIn$problem({
    required this.message,
    this.$__typename = 'EmailOrPasswordIncorrectProblem',
  });

  factory Mutation$SignIn$userSignIn$problem.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$SignIn$userSignIn$problem(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SignIn$userSignIn$problem ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignIn$userSignIn$problem
    on Mutation$SignIn$userSignIn$problem {
  CopyWith$Mutation$SignIn$userSignIn$problem<
    Mutation$SignIn$userSignIn$problem
  >
  get copyWith => CopyWith$Mutation$SignIn$userSignIn$problem(this, (i) => i);
}

abstract class CopyWith$Mutation$SignIn$userSignIn$problem<TRes> {
  factory CopyWith$Mutation$SignIn$userSignIn$problem(
    Mutation$SignIn$userSignIn$problem instance,
    TRes Function(Mutation$SignIn$userSignIn$problem) then,
  ) = _CopyWithImpl$Mutation$SignIn$userSignIn$problem;

  factory CopyWith$Mutation$SignIn$userSignIn$problem.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignIn$userSignIn$problem;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$SignIn$userSignIn$problem<TRes>
    implements CopyWith$Mutation$SignIn$userSignIn$problem<TRes> {
  _CopyWithImpl$Mutation$SignIn$userSignIn$problem(this._instance, this._then);

  final Mutation$SignIn$userSignIn$problem _instance;

  final TRes Function(Mutation$SignIn$userSignIn$problem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$SignIn$userSignIn$problem(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$SignIn$userSignIn$problem<TRes>
    implements CopyWith$Mutation$SignIn$userSignIn$problem<TRes> {
  _CopyWithStubImpl$Mutation$SignIn$userSignIn$problem(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Variables$Mutation$SignUp {
  factory Variables$Mutation$SignUp({required Input$SignUpRequest input}) =>
      Variables$Mutation$SignUp._({r'input': input});

  Variables$Mutation$SignUp._(this._$data);

  factory Variables$Mutation$SignUp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$SignUpRequest.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$SignUp._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$SignUpRequest get input => (_$data['input'] as Input$SignUpRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SignUp<Variables$Mutation$SignUp> get copyWith =>
      CopyWith$Variables$Mutation$SignUp(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SignUp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$SignUp<TRes> {
  factory CopyWith$Variables$Mutation$SignUp(
    Variables$Mutation$SignUp instance,
    TRes Function(Variables$Mutation$SignUp) then,
  ) = _CopyWithImpl$Variables$Mutation$SignUp;

  factory CopyWith$Variables$Mutation$SignUp.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SignUp;

  TRes call({Input$SignUpRequest? input});
}

class _CopyWithImpl$Variables$Mutation$SignUp<TRes>
    implements CopyWith$Variables$Mutation$SignUp<TRes> {
  _CopyWithImpl$Variables$Mutation$SignUp(this._instance, this._then);

  final Variables$Mutation$SignUp _instance;

  final TRes Function(Variables$Mutation$SignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$SignUp._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$SignUpRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$SignUp<TRes>
    implements CopyWith$Variables$Mutation$SignUp<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SignUp(this._res);

  TRes _res;

  call({Input$SignUpRequest? input}) => _res;
}

class Mutation$SignUp {
  Mutation$SignUp({required this.userSignUp, this.$__typename = 'Mutation'});

  factory Mutation$SignUp.fromJson(Map<String, dynamic> json) {
    final l$userSignUp = json['userSignUp'];
    final l$$__typename = json['__typename'];
    return Mutation$SignUp(
      userSignUp: Mutation$SignUp$userSignUp.fromJson(
        (l$userSignUp as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SignUp$userSignUp userSignUp;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userSignUp = userSignUp;
    _resultData['userSignUp'] = l$userSignUp.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userSignUp = userSignUp;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userSignUp, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SignUp || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userSignUp = userSignUp;
    final lOther$userSignUp = other.userSignUp;
    if (l$userSignUp != lOther$userSignUp) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignUp on Mutation$SignUp {
  CopyWith$Mutation$SignUp<Mutation$SignUp> get copyWith =>
      CopyWith$Mutation$SignUp(this, (i) => i);
}

abstract class CopyWith$Mutation$SignUp<TRes> {
  factory CopyWith$Mutation$SignUp(
    Mutation$SignUp instance,
    TRes Function(Mutation$SignUp) then,
  ) = _CopyWithImpl$Mutation$SignUp;

  factory CopyWith$Mutation$SignUp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignUp;

  TRes call({Mutation$SignUp$userSignUp? userSignUp, String? $__typename});
  CopyWith$Mutation$SignUp$userSignUp<TRes> get userSignUp;
}

class _CopyWithImpl$Mutation$SignUp<TRes>
    implements CopyWith$Mutation$SignUp<TRes> {
  _CopyWithImpl$Mutation$SignUp(this._instance, this._then);

  final Mutation$SignUp _instance;

  final TRes Function(Mutation$SignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userSignUp = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SignUp(
      userSignUp: userSignUp == _undefined || userSignUp == null
          ? _instance.userSignUp
          : (userSignUp as Mutation$SignUp$userSignUp),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SignUp$userSignUp<TRes> get userSignUp {
    final local$userSignUp = _instance.userSignUp;
    return CopyWith$Mutation$SignUp$userSignUp(
      local$userSignUp,
      (e) => call(userSignUp: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$SignUp<TRes>
    implements CopyWith$Mutation$SignUp<TRes> {
  _CopyWithStubImpl$Mutation$SignUp(this._res);

  TRes _res;

  call({Mutation$SignUp$userSignUp? userSignUp, String? $__typename}) => _res;

  CopyWith$Mutation$SignUp$userSignUp<TRes> get userSignUp =>
      CopyWith$Mutation$SignUp$userSignUp.stub(_res);
}

const documentNodeMutationSignUp = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'SignUp'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'SignUpRequest'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'userSignUp'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'problem'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                          on: NamedTypeNode(
                            name: NameNode(value: 'EmailAlreadyUsedProblem'),
                            isNonNull: false,
                          ),
                        ),
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'message'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'token'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'User'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionUser,
  ],
);
Mutation$SignUp _parserFn$Mutation$SignUp(Map<String, dynamic> data) =>
    Mutation$SignUp.fromJson(data);
typedef OnMutationCompleted$Mutation$SignUp =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$SignUp?);

class Options$Mutation$SignUp extends graphql.MutationOptions<Mutation$SignUp> {
  Options$Mutation$SignUp({
    String? operationName,
    required Variables$Mutation$SignUp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignUp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignUp? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignUp>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$SignUp(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationSignUp,
         parserFn: _parserFn$Mutation$SignUp,
       );

  final OnMutationCompleted$Mutation$SignUp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$SignUp
    extends graphql.WatchQueryOptions<Mutation$SignUp> {
  WatchOptions$Mutation$SignUp({
    String? operationName,
    required Variables$Mutation$SignUp variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignUp? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeMutationSignUp,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$SignUp,
       );
}

extension ClientExtension$Mutation$SignUp on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SignUp>> mutate$SignUp(
    Options$Mutation$SignUp options,
  ) async => await this.mutate(options);
  graphql.ObservableQuery<Mutation$SignUp> watchMutation$SignUp(
    WatchOptions$Mutation$SignUp options,
  ) => this.watchMutation(options);
}

class Mutation$SignUp$HookResult {
  Mutation$SignUp$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$SignUp runMutation;

  final graphql.QueryResult<Mutation$SignUp> result;
}

Mutation$SignUp$HookResult useMutation$SignUp([
  WidgetOptions$Mutation$SignUp? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$SignUp(),
  );
  return Mutation$SignUp$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$SignUp> useWatchMutation$SignUp(
  WatchOptions$Mutation$SignUp options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$SignUp
    extends graphql.MutationOptions<Mutation$SignUp> {
  WidgetOptions$Mutation$SignUp({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SignUp? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SignUp? onCompleted,
    graphql.OnMutationUpdate<Mutation$SignUp>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$SignUp(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationSignUp,
         parserFn: _parserFn$Mutation$SignUp,
       );

  final OnMutationCompleted$Mutation$SignUp? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$SignUp =
    graphql.MultiSourceResult<Mutation$SignUp> Function(
      Variables$Mutation$SignUp, {
      Object? optimisticResult,
      Mutation$SignUp? typedOptimisticResult,
    });
typedef Builder$Mutation$SignUp =
    widgets.Widget Function(
      RunMutation$Mutation$SignUp,
      graphql.QueryResult<Mutation$SignUp>?,
    );

class Mutation$SignUp$Widget extends graphql_flutter.Mutation<Mutation$SignUp> {
  Mutation$SignUp$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$SignUp? options,
    required Builder$Mutation$SignUp builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$SignUp(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Mutation$SignUp$userSignUp {
  Mutation$SignUp$userSignUp({
    this.problem,
    this.token,
    this.user,
    this.$__typename = 'SignUpResponse',
  });

  factory Mutation$SignUp$userSignUp.fromJson(Map<String, dynamic> json) {
    final l$problem = json['problem'];
    final l$token = json['token'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$SignUp$userSignUp(
      problem: l$problem == null
          ? null
          : Mutation$SignUp$userSignUp$problem.fromJson(
              (l$problem as Map<String, dynamic>),
            ),
      token: (l$token as String?),
      user: l$user == null
          ? null
          : Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SignUp$userSignUp$problem? problem;

  final String? token;

  final Fragment$User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$problem = problem;
    _resultData['problem'] = l$problem?.toJson();
    final l$token = token;
    _resultData['token'] = l$token;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$problem = problem;
    final l$token = token;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$problem, l$token, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SignUp$userSignUp ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$problem = problem;
    final lOther$problem = other.problem;
    if (l$problem != lOther$problem) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignUp$userSignUp
    on Mutation$SignUp$userSignUp {
  CopyWith$Mutation$SignUp$userSignUp<Mutation$SignUp$userSignUp>
  get copyWith => CopyWith$Mutation$SignUp$userSignUp(this, (i) => i);
}

abstract class CopyWith$Mutation$SignUp$userSignUp<TRes> {
  factory CopyWith$Mutation$SignUp$userSignUp(
    Mutation$SignUp$userSignUp instance,
    TRes Function(Mutation$SignUp$userSignUp) then,
  ) = _CopyWithImpl$Mutation$SignUp$userSignUp;

  factory CopyWith$Mutation$SignUp$userSignUp.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignUp$userSignUp;

  TRes call({
    Mutation$SignUp$userSignUp$problem? problem,
    String? token,
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Mutation$SignUp$userSignUp$problem<TRes> get problem;
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Mutation$SignUp$userSignUp<TRes>
    implements CopyWith$Mutation$SignUp$userSignUp<TRes> {
  _CopyWithImpl$Mutation$SignUp$userSignUp(this._instance, this._then);

  final Mutation$SignUp$userSignUp _instance;

  final TRes Function(Mutation$SignUp$userSignUp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? problem = _undefined,
    Object? token = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$SignUp$userSignUp(
      problem: problem == _undefined
          ? _instance.problem
          : (problem as Mutation$SignUp$userSignUp$problem?),
      token: token == _undefined ? _instance.token : (token as String?),
      user: user == _undefined ? _instance.user : (user as Fragment$User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$SignUp$userSignUp$problem<TRes> get problem {
    final local$problem = _instance.problem;
    return local$problem == null
        ? CopyWith$Mutation$SignUp$userSignUp$problem.stub(_then(_instance))
        : CopyWith$Mutation$SignUp$userSignUp$problem(
            local$problem,
            (e) => call(problem: e),
          );
  }

  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$User.stub(_then(_instance))
        : CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$SignUp$userSignUp<TRes>
    implements CopyWith$Mutation$SignUp$userSignUp<TRes> {
  _CopyWithStubImpl$Mutation$SignUp$userSignUp(this._res);

  TRes _res;

  call({
    Mutation$SignUp$userSignUp$problem? problem,
    String? token,
    Fragment$User? user,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$SignUp$userSignUp$problem<TRes> get problem =>
      CopyWith$Mutation$SignUp$userSignUp$problem.stub(_res);

  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
}

class Mutation$SignUp$userSignUp$problem {
  Mutation$SignUp$userSignUp$problem({
    required this.message,
    this.$__typename = 'EmailAlreadyUsedProblem',
  });

  factory Mutation$SignUp$userSignUp$problem.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$SignUp$userSignUp$problem(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SignUp$userSignUp$problem ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$SignUp$userSignUp$problem
    on Mutation$SignUp$userSignUp$problem {
  CopyWith$Mutation$SignUp$userSignUp$problem<
    Mutation$SignUp$userSignUp$problem
  >
  get copyWith => CopyWith$Mutation$SignUp$userSignUp$problem(this, (i) => i);
}

abstract class CopyWith$Mutation$SignUp$userSignUp$problem<TRes> {
  factory CopyWith$Mutation$SignUp$userSignUp$problem(
    Mutation$SignUp$userSignUp$problem instance,
    TRes Function(Mutation$SignUp$userSignUp$problem) then,
  ) = _CopyWithImpl$Mutation$SignUp$userSignUp$problem;

  factory CopyWith$Mutation$SignUp$userSignUp$problem.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SignUp$userSignUp$problem;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$SignUp$userSignUp$problem<TRes>
    implements CopyWith$Mutation$SignUp$userSignUp$problem<TRes> {
  _CopyWithImpl$Mutation$SignUp$userSignUp$problem(this._instance, this._then);

  final Mutation$SignUp$userSignUp$problem _instance;

  final TRes Function(Mutation$SignUp$userSignUp$problem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$SignUp$userSignUp$problem(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$SignUp$userSignUp$problem<TRes>
    implements CopyWith$Mutation$SignUp$userSignUp$problem<TRes> {
  _CopyWithStubImpl$Mutation$SignUp$userSignUp$problem(this._res);

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Variables$Mutation$postCreate {
  factory Variables$Mutation$postCreate({
    required Input$CreatePostRequest input,
  }) => Variables$Mutation$postCreate._({r'input': input});

  Variables$Mutation$postCreate._(this._$data);

  factory Variables$Mutation$postCreate.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreatePostRequest.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$postCreate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreatePostRequest get input =>
      (_$data['input'] as Input$CreatePostRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$postCreate<Variables$Mutation$postCreate>
  get copyWith => CopyWith$Variables$Mutation$postCreate(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$postCreate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$postCreate<TRes> {
  factory CopyWith$Variables$Mutation$postCreate(
    Variables$Mutation$postCreate instance,
    TRes Function(Variables$Mutation$postCreate) then,
  ) = _CopyWithImpl$Variables$Mutation$postCreate;

  factory CopyWith$Variables$Mutation$postCreate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$postCreate;

  TRes call({Input$CreatePostRequest? input});
}

class _CopyWithImpl$Variables$Mutation$postCreate<TRes>
    implements CopyWith$Variables$Mutation$postCreate<TRes> {
  _CopyWithImpl$Variables$Mutation$postCreate(this._instance, this._then);

  final Variables$Mutation$postCreate _instance;

  final TRes Function(Variables$Mutation$postCreate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$postCreate._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$CreatePostRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$postCreate<TRes>
    implements CopyWith$Variables$Mutation$postCreate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$postCreate(this._res);

  TRes _res;

  call({Input$CreatePostRequest? input}) => _res;
}

class Mutation$postCreate {
  Mutation$postCreate({
    required this.postCreate,
    this.$__typename = 'Mutation',
  });

  factory Mutation$postCreate.fromJson(Map<String, dynamic> json) {
    final l$postCreate = json['postCreate'];
    final l$$__typename = json['__typename'];
    return Mutation$postCreate(
      postCreate: Fragment$Post.fromJson(
        (l$postCreate as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Post postCreate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$postCreate = postCreate;
    _resultData['postCreate'] = l$postCreate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$postCreate = postCreate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$postCreate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$postCreate || runtimeType != other.runtimeType) {
      return false;
    }
    final l$postCreate = postCreate;
    final lOther$postCreate = other.postCreate;
    if (l$postCreate != lOther$postCreate) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$postCreate on Mutation$postCreate {
  CopyWith$Mutation$postCreate<Mutation$postCreate> get copyWith =>
      CopyWith$Mutation$postCreate(this, (i) => i);
}

abstract class CopyWith$Mutation$postCreate<TRes> {
  factory CopyWith$Mutation$postCreate(
    Mutation$postCreate instance,
    TRes Function(Mutation$postCreate) then,
  ) = _CopyWithImpl$Mutation$postCreate;

  factory CopyWith$Mutation$postCreate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$postCreate;

  TRes call({Fragment$Post? postCreate, String? $__typename});
  CopyWith$Fragment$Post<TRes> get postCreate;
}

class _CopyWithImpl$Mutation$postCreate<TRes>
    implements CopyWith$Mutation$postCreate<TRes> {
  _CopyWithImpl$Mutation$postCreate(this._instance, this._then);

  final Mutation$postCreate _instance;

  final TRes Function(Mutation$postCreate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? postCreate = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$postCreate(
      postCreate: postCreate == _undefined || postCreate == null
          ? _instance.postCreate
          : (postCreate as Fragment$Post),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$Post<TRes> get postCreate {
    final local$postCreate = _instance.postCreate;
    return CopyWith$Fragment$Post(local$postCreate, (e) => call(postCreate: e));
  }
}

class _CopyWithStubImpl$Mutation$postCreate<TRes>
    implements CopyWith$Mutation$postCreate<TRes> {
  _CopyWithStubImpl$Mutation$postCreate(this._res);

  TRes _res;

  call({Fragment$Post? postCreate, String? $__typename}) => _res;

  CopyWith$Fragment$Post<TRes> get postCreate =>
      CopyWith$Fragment$Post.stub(_res);
}

const documentNodeMutationpostCreate = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'postCreate'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'CreatePostRequest'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'postCreate'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Post'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionPost,
    fragmentDefinitionUser,
  ],
);
Mutation$postCreate _parserFn$Mutation$postCreate(Map<String, dynamic> data) =>
    Mutation$postCreate.fromJson(data);
typedef OnMutationCompleted$Mutation$postCreate =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$postCreate?);

class Options$Mutation$postCreate
    extends graphql.MutationOptions<Mutation$postCreate> {
  Options$Mutation$postCreate({
    String? operationName,
    required Variables$Mutation$postCreate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$postCreate? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$postCreate? onCompleted,
    graphql.OnMutationUpdate<Mutation$postCreate>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$postCreate(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationpostCreate,
         parserFn: _parserFn$Mutation$postCreate,
       );

  final OnMutationCompleted$Mutation$postCreate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$postCreate
    extends graphql.WatchQueryOptions<Mutation$postCreate> {
  WatchOptions$Mutation$postCreate({
    String? operationName,
    required Variables$Mutation$postCreate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$postCreate? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeMutationpostCreate,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$postCreate,
       );
}

extension ClientExtension$Mutation$postCreate on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$postCreate>> mutate$postCreate(
    Options$Mutation$postCreate options,
  ) async => await this.mutate(options);
  graphql.ObservableQuery<Mutation$postCreate> watchMutation$postCreate(
    WatchOptions$Mutation$postCreate options,
  ) => this.watchMutation(options);
}

class Mutation$postCreate$HookResult {
  Mutation$postCreate$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$postCreate runMutation;

  final graphql.QueryResult<Mutation$postCreate> result;
}

Mutation$postCreate$HookResult useMutation$postCreate([
  WidgetOptions$Mutation$postCreate? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$postCreate(),
  );
  return Mutation$postCreate$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$postCreate> useWatchMutation$postCreate(
  WatchOptions$Mutation$postCreate options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$postCreate
    extends graphql.MutationOptions<Mutation$postCreate> {
  WidgetOptions$Mutation$postCreate({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$postCreate? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$postCreate? onCompleted,
    graphql.OnMutationUpdate<Mutation$postCreate>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$postCreate(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationpostCreate,
         parserFn: _parserFn$Mutation$postCreate,
       );

  final OnMutationCompleted$Mutation$postCreate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$postCreate =
    graphql.MultiSourceResult<Mutation$postCreate> Function(
      Variables$Mutation$postCreate, {
      Object? optimisticResult,
      Mutation$postCreate? typedOptimisticResult,
    });
typedef Builder$Mutation$postCreate =
    widgets.Widget Function(
      RunMutation$Mutation$postCreate,
      graphql.QueryResult<Mutation$postCreate>?,
    );

class Mutation$postCreate$Widget
    extends graphql_flutter.Mutation<Mutation$postCreate> {
  Mutation$postCreate$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$postCreate? options,
    required Builder$Mutation$postCreate builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$postCreate(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Variables$Mutation$postDelete {
  factory Variables$Mutation$postDelete({required Input$PostIdRequest input}) =>
      Variables$Mutation$postDelete._({r'input': input});

  Variables$Mutation$postDelete._(this._$data);

  factory Variables$Mutation$postDelete.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$PostIdRequest.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$postDelete._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PostIdRequest get input => (_$data['input'] as Input$PostIdRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$postDelete<Variables$Mutation$postDelete>
  get copyWith => CopyWith$Variables$Mutation$postDelete(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$postDelete ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$postDelete<TRes> {
  factory CopyWith$Variables$Mutation$postDelete(
    Variables$Mutation$postDelete instance,
    TRes Function(Variables$Mutation$postDelete) then,
  ) = _CopyWithImpl$Variables$Mutation$postDelete;

  factory CopyWith$Variables$Mutation$postDelete.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$postDelete;

  TRes call({Input$PostIdRequest? input});
}

class _CopyWithImpl$Variables$Mutation$postDelete<TRes>
    implements CopyWith$Variables$Mutation$postDelete<TRes> {
  _CopyWithImpl$Variables$Mutation$postDelete(this._instance, this._then);

  final Variables$Mutation$postDelete _instance;

  final TRes Function(Variables$Mutation$postDelete) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$postDelete._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$PostIdRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$postDelete<TRes>
    implements CopyWith$Variables$Mutation$postDelete<TRes> {
  _CopyWithStubImpl$Variables$Mutation$postDelete(this._res);

  TRes _res;

  call({Input$PostIdRequest? input}) => _res;
}

class Mutation$postDelete {
  Mutation$postDelete({
    required this.postDelete,
    this.$__typename = 'Mutation',
  });

  factory Mutation$postDelete.fromJson(Map<String, dynamic> json) {
    final l$postDelete = json['postDelete'];
    final l$$__typename = json['__typename'];
    return Mutation$postDelete(
      postDelete: Mutation$postDelete$postDelete.fromJson(
        (l$postDelete as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$postDelete$postDelete postDelete;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$postDelete = postDelete;
    _resultData['postDelete'] = l$postDelete.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$postDelete = postDelete;
    final l$$__typename = $__typename;
    return Object.hashAll([l$postDelete, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$postDelete || runtimeType != other.runtimeType) {
      return false;
    }
    final l$postDelete = postDelete;
    final lOther$postDelete = other.postDelete;
    if (l$postDelete != lOther$postDelete) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$postDelete on Mutation$postDelete {
  CopyWith$Mutation$postDelete<Mutation$postDelete> get copyWith =>
      CopyWith$Mutation$postDelete(this, (i) => i);
}

abstract class CopyWith$Mutation$postDelete<TRes> {
  factory CopyWith$Mutation$postDelete(
    Mutation$postDelete instance,
    TRes Function(Mutation$postDelete) then,
  ) = _CopyWithImpl$Mutation$postDelete;

  factory CopyWith$Mutation$postDelete.stub(TRes res) =
      _CopyWithStubImpl$Mutation$postDelete;

  TRes call({Mutation$postDelete$postDelete? postDelete, String? $__typename});
  CopyWith$Mutation$postDelete$postDelete<TRes> get postDelete;
}

class _CopyWithImpl$Mutation$postDelete<TRes>
    implements CopyWith$Mutation$postDelete<TRes> {
  _CopyWithImpl$Mutation$postDelete(this._instance, this._then);

  final Mutation$postDelete _instance;

  final TRes Function(Mutation$postDelete) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? postDelete = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$postDelete(
      postDelete: postDelete == _undefined || postDelete == null
          ? _instance.postDelete
          : (postDelete as Mutation$postDelete$postDelete),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$postDelete$postDelete<TRes> get postDelete {
    final local$postDelete = _instance.postDelete;
    return CopyWith$Mutation$postDelete$postDelete(
      local$postDelete,
      (e) => call(postDelete: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$postDelete<TRes>
    implements CopyWith$Mutation$postDelete<TRes> {
  _CopyWithStubImpl$Mutation$postDelete(this._res);

  TRes _res;

  call({Mutation$postDelete$postDelete? postDelete, String? $__typename}) =>
      _res;

  CopyWith$Mutation$postDelete$postDelete<TRes> get postDelete =>
      CopyWith$Mutation$postDelete$postDelete.stub(_res);
}

const documentNodeMutationpostDelete = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'postDelete'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'PostIdRequest'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'postDelete'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'ok'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);
Mutation$postDelete _parserFn$Mutation$postDelete(Map<String, dynamic> data) =>
    Mutation$postDelete.fromJson(data);
typedef OnMutationCompleted$Mutation$postDelete =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$postDelete?);

class Options$Mutation$postDelete
    extends graphql.MutationOptions<Mutation$postDelete> {
  Options$Mutation$postDelete({
    String? operationName,
    required Variables$Mutation$postDelete variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$postDelete? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$postDelete? onCompleted,
    graphql.OnMutationUpdate<Mutation$postDelete>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$postDelete(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationpostDelete,
         parserFn: _parserFn$Mutation$postDelete,
       );

  final OnMutationCompleted$Mutation$postDelete? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$postDelete
    extends graphql.WatchQueryOptions<Mutation$postDelete> {
  WatchOptions$Mutation$postDelete({
    String? operationName,
    required Variables$Mutation$postDelete variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$postDelete? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeMutationpostDelete,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$postDelete,
       );
}

extension ClientExtension$Mutation$postDelete on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$postDelete>> mutate$postDelete(
    Options$Mutation$postDelete options,
  ) async => await this.mutate(options);
  graphql.ObservableQuery<Mutation$postDelete> watchMutation$postDelete(
    WatchOptions$Mutation$postDelete options,
  ) => this.watchMutation(options);
}

class Mutation$postDelete$HookResult {
  Mutation$postDelete$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$postDelete runMutation;

  final graphql.QueryResult<Mutation$postDelete> result;
}

Mutation$postDelete$HookResult useMutation$postDelete([
  WidgetOptions$Mutation$postDelete? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$postDelete(),
  );
  return Mutation$postDelete$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$postDelete> useWatchMutation$postDelete(
  WatchOptions$Mutation$postDelete options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$postDelete
    extends graphql.MutationOptions<Mutation$postDelete> {
  WidgetOptions$Mutation$postDelete({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$postDelete? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$postDelete? onCompleted,
    graphql.OnMutationUpdate<Mutation$postDelete>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$postDelete(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationpostDelete,
         parserFn: _parserFn$Mutation$postDelete,
       );

  final OnMutationCompleted$Mutation$postDelete? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$postDelete =
    graphql.MultiSourceResult<Mutation$postDelete> Function(
      Variables$Mutation$postDelete, {
      Object? optimisticResult,
      Mutation$postDelete? typedOptimisticResult,
    });
typedef Builder$Mutation$postDelete =
    widgets.Widget Function(
      RunMutation$Mutation$postDelete,
      graphql.QueryResult<Mutation$postDelete>?,
    );

class Mutation$postDelete$Widget
    extends graphql_flutter.Mutation<Mutation$postDelete> {
  Mutation$postDelete$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$postDelete? options,
    required Builder$Mutation$postDelete builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$postDelete(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Mutation$postDelete$postDelete {
  Mutation$postDelete$postDelete({
    required this.ok,
    this.$__typename = 'DeletePostResponse',
  });

  factory Mutation$postDelete$postDelete.fromJson(Map<String, dynamic> json) {
    final l$ok = json['ok'];
    final l$$__typename = json['__typename'];
    return Mutation$postDelete$postDelete(
      ok: (l$ok as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool ok;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ok = ok;
    _resultData['ok'] = l$ok;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ok = ok;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ok, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$postDelete$postDelete ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ok = ok;
    final lOther$ok = other.ok;
    if (l$ok != lOther$ok) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$postDelete$postDelete
    on Mutation$postDelete$postDelete {
  CopyWith$Mutation$postDelete$postDelete<Mutation$postDelete$postDelete>
  get copyWith => CopyWith$Mutation$postDelete$postDelete(this, (i) => i);
}

abstract class CopyWith$Mutation$postDelete$postDelete<TRes> {
  factory CopyWith$Mutation$postDelete$postDelete(
    Mutation$postDelete$postDelete instance,
    TRes Function(Mutation$postDelete$postDelete) then,
  ) = _CopyWithImpl$Mutation$postDelete$postDelete;

  factory CopyWith$Mutation$postDelete$postDelete.stub(TRes res) =
      _CopyWithStubImpl$Mutation$postDelete$postDelete;

  TRes call({bool? ok, String? $__typename});
}

class _CopyWithImpl$Mutation$postDelete$postDelete<TRes>
    implements CopyWith$Mutation$postDelete$postDelete<TRes> {
  _CopyWithImpl$Mutation$postDelete$postDelete(this._instance, this._then);

  final Mutation$postDelete$postDelete _instance;

  final TRes Function(Mutation$postDelete$postDelete) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? ok = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$postDelete$postDelete(
          ok: ok == _undefined || ok == null ? _instance.ok : (ok as bool),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$postDelete$postDelete<TRes>
    implements CopyWith$Mutation$postDelete$postDelete<TRes> {
  _CopyWithStubImpl$Mutation$postDelete$postDelete(this._res);

  TRes _res;

  call({bool? ok, String? $__typename}) => _res;
}

class Variables$Mutation$postLike {
  factory Variables$Mutation$postLike({required Input$PostIdRequest input}) =>
      Variables$Mutation$postLike._({r'input': input});

  Variables$Mutation$postLike._(this._$data);

  factory Variables$Mutation$postLike.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$PostIdRequest.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$postLike._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PostIdRequest get input => (_$data['input'] as Input$PostIdRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$postLike<Variables$Mutation$postLike>
  get copyWith => CopyWith$Variables$Mutation$postLike(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$postLike ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$postLike<TRes> {
  factory CopyWith$Variables$Mutation$postLike(
    Variables$Mutation$postLike instance,
    TRes Function(Variables$Mutation$postLike) then,
  ) = _CopyWithImpl$Variables$Mutation$postLike;

  factory CopyWith$Variables$Mutation$postLike.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$postLike;

  TRes call({Input$PostIdRequest? input});
}

class _CopyWithImpl$Variables$Mutation$postLike<TRes>
    implements CopyWith$Variables$Mutation$postLike<TRes> {
  _CopyWithImpl$Variables$Mutation$postLike(this._instance, this._then);

  final Variables$Mutation$postLike _instance;

  final TRes Function(Variables$Mutation$postLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$postLike._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$PostIdRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$postLike<TRes>
    implements CopyWith$Variables$Mutation$postLike<TRes> {
  _CopyWithStubImpl$Variables$Mutation$postLike(this._res);

  TRes _res;

  call({Input$PostIdRequest? input}) => _res;
}

class Mutation$postLike {
  Mutation$postLike({required this.postLike, this.$__typename = 'Mutation'});

  factory Mutation$postLike.fromJson(Map<String, dynamic> json) {
    final l$postLike = json['postLike'];
    final l$$__typename = json['__typename'];
    return Mutation$postLike(
      postLike: Fragment$Post.fromJson((l$postLike as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Post postLike;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$postLike = postLike;
    _resultData['postLike'] = l$postLike.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$postLike = postLike;
    final l$$__typename = $__typename;
    return Object.hashAll([l$postLike, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$postLike || runtimeType != other.runtimeType) {
      return false;
    }
    final l$postLike = postLike;
    final lOther$postLike = other.postLike;
    if (l$postLike != lOther$postLike) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$postLike on Mutation$postLike {
  CopyWith$Mutation$postLike<Mutation$postLike> get copyWith =>
      CopyWith$Mutation$postLike(this, (i) => i);
}

abstract class CopyWith$Mutation$postLike<TRes> {
  factory CopyWith$Mutation$postLike(
    Mutation$postLike instance,
    TRes Function(Mutation$postLike) then,
  ) = _CopyWithImpl$Mutation$postLike;

  factory CopyWith$Mutation$postLike.stub(TRes res) =
      _CopyWithStubImpl$Mutation$postLike;

  TRes call({Fragment$Post? postLike, String? $__typename});
  CopyWith$Fragment$Post<TRes> get postLike;
}

class _CopyWithImpl$Mutation$postLike<TRes>
    implements CopyWith$Mutation$postLike<TRes> {
  _CopyWithImpl$Mutation$postLike(this._instance, this._then);

  final Mutation$postLike _instance;

  final TRes Function(Mutation$postLike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? postLike = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$postLike(
      postLike: postLike == _undefined || postLike == null
          ? _instance.postLike
          : (postLike as Fragment$Post),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$Post<TRes> get postLike {
    final local$postLike = _instance.postLike;
    return CopyWith$Fragment$Post(local$postLike, (e) => call(postLike: e));
  }
}

class _CopyWithStubImpl$Mutation$postLike<TRes>
    implements CopyWith$Mutation$postLike<TRes> {
  _CopyWithStubImpl$Mutation$postLike(this._res);

  TRes _res;

  call({Fragment$Post? postLike, String? $__typename}) => _res;

  CopyWith$Fragment$Post<TRes> get postLike =>
      CopyWith$Fragment$Post.stub(_res);
}

const documentNodeMutationpostLike = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'postLike'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'PostIdRequest'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'postLike'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Post'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionPost,
    fragmentDefinitionUser,
  ],
);
Mutation$postLike _parserFn$Mutation$postLike(Map<String, dynamic> data) =>
    Mutation$postLike.fromJson(data);
typedef OnMutationCompleted$Mutation$postLike =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$postLike?);

class Options$Mutation$postLike
    extends graphql.MutationOptions<Mutation$postLike> {
  Options$Mutation$postLike({
    String? operationName,
    required Variables$Mutation$postLike variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$postLike? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$postLike? onCompleted,
    graphql.OnMutationUpdate<Mutation$postLike>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$postLike(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationpostLike,
         parserFn: _parserFn$Mutation$postLike,
       );

  final OnMutationCompleted$Mutation$postLike? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$postLike
    extends graphql.WatchQueryOptions<Mutation$postLike> {
  WatchOptions$Mutation$postLike({
    String? operationName,
    required Variables$Mutation$postLike variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$postLike? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeMutationpostLike,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$postLike,
       );
}

extension ClientExtension$Mutation$postLike on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$postLike>> mutate$postLike(
    Options$Mutation$postLike options,
  ) async => await this.mutate(options);
  graphql.ObservableQuery<Mutation$postLike> watchMutation$postLike(
    WatchOptions$Mutation$postLike options,
  ) => this.watchMutation(options);
}

class Mutation$postLike$HookResult {
  Mutation$postLike$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$postLike runMutation;

  final graphql.QueryResult<Mutation$postLike> result;
}

Mutation$postLike$HookResult useMutation$postLike([
  WidgetOptions$Mutation$postLike? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$postLike(),
  );
  return Mutation$postLike$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$postLike> useWatchMutation$postLike(
  WatchOptions$Mutation$postLike options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$postLike
    extends graphql.MutationOptions<Mutation$postLike> {
  WidgetOptions$Mutation$postLike({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$postLike? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$postLike? onCompleted,
    graphql.OnMutationUpdate<Mutation$postLike>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$postLike(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationpostLike,
         parserFn: _parserFn$Mutation$postLike,
       );

  final OnMutationCompleted$Mutation$postLike? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$postLike =
    graphql.MultiSourceResult<Mutation$postLike> Function(
      Variables$Mutation$postLike, {
      Object? optimisticResult,
      Mutation$postLike? typedOptimisticResult,
    });
typedef Builder$Mutation$postLike =
    widgets.Widget Function(
      RunMutation$Mutation$postLike,
      graphql.QueryResult<Mutation$postLike>?,
    );

class Mutation$postLike$Widget
    extends graphql_flutter.Mutation<Mutation$postLike> {
  Mutation$postLike$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$postLike? options,
    required Builder$Mutation$postLike builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$postLike(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Variables$Mutation$postUnlike {
  factory Variables$Mutation$postUnlike({required Input$PostIdRequest input}) =>
      Variables$Mutation$postUnlike._({r'input': input});

  Variables$Mutation$postUnlike._(this._$data);

  factory Variables$Mutation$postUnlike.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$PostIdRequest.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$postUnlike._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PostIdRequest get input => (_$data['input'] as Input$PostIdRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$postUnlike<Variables$Mutation$postUnlike>
  get copyWith => CopyWith$Variables$Mutation$postUnlike(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$postUnlike ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$postUnlike<TRes> {
  factory CopyWith$Variables$Mutation$postUnlike(
    Variables$Mutation$postUnlike instance,
    TRes Function(Variables$Mutation$postUnlike) then,
  ) = _CopyWithImpl$Variables$Mutation$postUnlike;

  factory CopyWith$Variables$Mutation$postUnlike.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$postUnlike;

  TRes call({Input$PostIdRequest? input});
}

class _CopyWithImpl$Variables$Mutation$postUnlike<TRes>
    implements CopyWith$Variables$Mutation$postUnlike<TRes> {
  _CopyWithImpl$Variables$Mutation$postUnlike(this._instance, this._then);

  final Variables$Mutation$postUnlike _instance;

  final TRes Function(Variables$Mutation$postUnlike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$postUnlike._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$PostIdRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$postUnlike<TRes>
    implements CopyWith$Variables$Mutation$postUnlike<TRes> {
  _CopyWithStubImpl$Variables$Mutation$postUnlike(this._res);

  TRes _res;

  call({Input$PostIdRequest? input}) => _res;
}

class Mutation$postUnlike {
  Mutation$postUnlike({
    required this.postUnlike,
    this.$__typename = 'Mutation',
  });

  factory Mutation$postUnlike.fromJson(Map<String, dynamic> json) {
    final l$postUnlike = json['postUnlike'];
    final l$$__typename = json['__typename'];
    return Mutation$postUnlike(
      postUnlike: Fragment$Post.fromJson(
        (l$postUnlike as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Post postUnlike;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$postUnlike = postUnlike;
    _resultData['postUnlike'] = l$postUnlike.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$postUnlike = postUnlike;
    final l$$__typename = $__typename;
    return Object.hashAll([l$postUnlike, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$postUnlike || runtimeType != other.runtimeType) {
      return false;
    }
    final l$postUnlike = postUnlike;
    final lOther$postUnlike = other.postUnlike;
    if (l$postUnlike != lOther$postUnlike) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$postUnlike on Mutation$postUnlike {
  CopyWith$Mutation$postUnlike<Mutation$postUnlike> get copyWith =>
      CopyWith$Mutation$postUnlike(this, (i) => i);
}

abstract class CopyWith$Mutation$postUnlike<TRes> {
  factory CopyWith$Mutation$postUnlike(
    Mutation$postUnlike instance,
    TRes Function(Mutation$postUnlike) then,
  ) = _CopyWithImpl$Mutation$postUnlike;

  factory CopyWith$Mutation$postUnlike.stub(TRes res) =
      _CopyWithStubImpl$Mutation$postUnlike;

  TRes call({Fragment$Post? postUnlike, String? $__typename});
  CopyWith$Fragment$Post<TRes> get postUnlike;
}

class _CopyWithImpl$Mutation$postUnlike<TRes>
    implements CopyWith$Mutation$postUnlike<TRes> {
  _CopyWithImpl$Mutation$postUnlike(this._instance, this._then);

  final Mutation$postUnlike _instance;

  final TRes Function(Mutation$postUnlike) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? postUnlike = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$postUnlike(
      postUnlike: postUnlike == _undefined || postUnlike == null
          ? _instance.postUnlike
          : (postUnlike as Fragment$Post),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$Post<TRes> get postUnlike {
    final local$postUnlike = _instance.postUnlike;
    return CopyWith$Fragment$Post(local$postUnlike, (e) => call(postUnlike: e));
  }
}

class _CopyWithStubImpl$Mutation$postUnlike<TRes>
    implements CopyWith$Mutation$postUnlike<TRes> {
  _CopyWithStubImpl$Mutation$postUnlike(this._res);

  TRes _res;

  call({Fragment$Post? postUnlike, String? $__typename}) => _res;

  CopyWith$Fragment$Post<TRes> get postUnlike =>
      CopyWith$Fragment$Post.stub(_res);
}

const documentNodeMutationpostUnlike = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'postUnlike'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'PostIdRequest'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'postUnlike'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'Post'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionPost,
    fragmentDefinitionUser,
  ],
);
Mutation$postUnlike _parserFn$Mutation$postUnlike(Map<String, dynamic> data) =>
    Mutation$postUnlike.fromJson(data);
typedef OnMutationCompleted$Mutation$postUnlike =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$postUnlike?);

class Options$Mutation$postUnlike
    extends graphql.MutationOptions<Mutation$postUnlike> {
  Options$Mutation$postUnlike({
    String? operationName,
    required Variables$Mutation$postUnlike variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$postUnlike? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$postUnlike? onCompleted,
    graphql.OnMutationUpdate<Mutation$postUnlike>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$postUnlike(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationpostUnlike,
         parserFn: _parserFn$Mutation$postUnlike,
       );

  final OnMutationCompleted$Mutation$postUnlike? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$postUnlike
    extends graphql.WatchQueryOptions<Mutation$postUnlike> {
  WatchOptions$Mutation$postUnlike({
    String? operationName,
    required Variables$Mutation$postUnlike variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$postUnlike? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeMutationpostUnlike,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$postUnlike,
       );
}

extension ClientExtension$Mutation$postUnlike on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$postUnlike>> mutate$postUnlike(
    Options$Mutation$postUnlike options,
  ) async => await this.mutate(options);
  graphql.ObservableQuery<Mutation$postUnlike> watchMutation$postUnlike(
    WatchOptions$Mutation$postUnlike options,
  ) => this.watchMutation(options);
}

class Mutation$postUnlike$HookResult {
  Mutation$postUnlike$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$postUnlike runMutation;

  final graphql.QueryResult<Mutation$postUnlike> result;
}

Mutation$postUnlike$HookResult useMutation$postUnlike([
  WidgetOptions$Mutation$postUnlike? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$postUnlike(),
  );
  return Mutation$postUnlike$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$postUnlike> useWatchMutation$postUnlike(
  WatchOptions$Mutation$postUnlike options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$postUnlike
    extends graphql.MutationOptions<Mutation$postUnlike> {
  WidgetOptions$Mutation$postUnlike({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$postUnlike? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$postUnlike? onCompleted,
    graphql.OnMutationUpdate<Mutation$postUnlike>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$postUnlike(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationpostUnlike,
         parserFn: _parserFn$Mutation$postUnlike,
       );

  final OnMutationCompleted$Mutation$postUnlike? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$postUnlike =
    graphql.MultiSourceResult<Mutation$postUnlike> Function(
      Variables$Mutation$postUnlike, {
      Object? optimisticResult,
      Mutation$postUnlike? typedOptimisticResult,
    });
typedef Builder$Mutation$postUnlike =
    widgets.Widget Function(
      RunMutation$Mutation$postUnlike,
      graphql.QueryResult<Mutation$postUnlike>?,
    );

class Mutation$postUnlike$Widget
    extends graphql_flutter.Mutation<Mutation$postUnlike> {
  Mutation$postUnlike$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$postUnlike? options,
    required Builder$Mutation$postUnlike builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$postUnlike(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Variables$Mutation$editProfile {
  factory Variables$Mutation$editProfile({
    required Input$EditProfileRequest input,
  }) => Variables$Mutation$editProfile._({r'input': input});

  Variables$Mutation$editProfile._(this._$data);

  factory Variables$Mutation$editProfile.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$EditProfileRequest.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Mutation$editProfile._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$EditProfileRequest get input =>
      (_$data['input'] as Input$EditProfileRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$editProfile<Variables$Mutation$editProfile>
  get copyWith => CopyWith$Variables$Mutation$editProfile(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$editProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$editProfile<TRes> {
  factory CopyWith$Variables$Mutation$editProfile(
    Variables$Mutation$editProfile instance,
    TRes Function(Variables$Mutation$editProfile) then,
  ) = _CopyWithImpl$Variables$Mutation$editProfile;

  factory CopyWith$Variables$Mutation$editProfile.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$editProfile;

  TRes call({Input$EditProfileRequest? input});
}

class _CopyWithImpl$Variables$Mutation$editProfile<TRes>
    implements CopyWith$Variables$Mutation$editProfile<TRes> {
  _CopyWithImpl$Variables$Mutation$editProfile(this._instance, this._then);

  final Variables$Mutation$editProfile _instance;

  final TRes Function(Variables$Mutation$editProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Mutation$editProfile._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$EditProfileRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$editProfile<TRes>
    implements CopyWith$Variables$Mutation$editProfile<TRes> {
  _CopyWithStubImpl$Variables$Mutation$editProfile(this._res);

  TRes _res;

  call({Input$EditProfileRequest? input}) => _res;
}

class Mutation$editProfile {
  Mutation$editProfile({
    required this.userEditProfile,
    this.$__typename = 'Mutation',
  });

  factory Mutation$editProfile.fromJson(Map<String, dynamic> json) {
    final l$userEditProfile = json['userEditProfile'];
    final l$$__typename = json['__typename'];
    return Mutation$editProfile(
      userEditProfile: Mutation$editProfile$userEditProfile.fromJson(
        (l$userEditProfile as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$editProfile$userEditProfile userEditProfile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userEditProfile = userEditProfile;
    _resultData['userEditProfile'] = l$userEditProfile.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userEditProfile = userEditProfile;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userEditProfile, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$editProfile || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userEditProfile = userEditProfile;
    final lOther$userEditProfile = other.userEditProfile;
    if (l$userEditProfile != lOther$userEditProfile) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$editProfile on Mutation$editProfile {
  CopyWith$Mutation$editProfile<Mutation$editProfile> get copyWith =>
      CopyWith$Mutation$editProfile(this, (i) => i);
}

abstract class CopyWith$Mutation$editProfile<TRes> {
  factory CopyWith$Mutation$editProfile(
    Mutation$editProfile instance,
    TRes Function(Mutation$editProfile) then,
  ) = _CopyWithImpl$Mutation$editProfile;

  factory CopyWith$Mutation$editProfile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$editProfile;

  TRes call({
    Mutation$editProfile$userEditProfile? userEditProfile,
    String? $__typename,
  });
  CopyWith$Mutation$editProfile$userEditProfile<TRes> get userEditProfile;
}

class _CopyWithImpl$Mutation$editProfile<TRes>
    implements CopyWith$Mutation$editProfile<TRes> {
  _CopyWithImpl$Mutation$editProfile(this._instance, this._then);

  final Mutation$editProfile _instance;

  final TRes Function(Mutation$editProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userEditProfile = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$editProfile(
      userEditProfile: userEditProfile == _undefined || userEditProfile == null
          ? _instance.userEditProfile
          : (userEditProfile as Mutation$editProfile$userEditProfile),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$editProfile$userEditProfile<TRes> get userEditProfile {
    final local$userEditProfile = _instance.userEditProfile;
    return CopyWith$Mutation$editProfile$userEditProfile(
      local$userEditProfile,
      (e) => call(userEditProfile: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$editProfile<TRes>
    implements CopyWith$Mutation$editProfile<TRes> {
  _CopyWithStubImpl$Mutation$editProfile(this._res);

  TRes _res;

  call({
    Mutation$editProfile$userEditProfile? userEditProfile,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$editProfile$userEditProfile<TRes> get userEditProfile =>
      CopyWith$Mutation$editProfile$userEditProfile.stub(_res);
}

const documentNodeMutationeditProfile = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'editProfile'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'EditProfileRequest'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'userEditProfile'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'problem'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                          on: NamedTypeNode(
                            name: NameNode(value: 'EmailAlreadyUsedProblem'),
                            isNonNull: false,
                          ),
                        ),
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'message'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      InlineFragmentNode(
                        typeCondition: TypeConditionNode(
                          on: NamedTypeNode(
                            name: NameNode(value: 'PhoneAlreadyUsedProblem'),
                            isNonNull: false,
                          ),
                        ),
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'message'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: '__typename'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                          ],
                        ),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'User'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionUser,
  ],
);
Mutation$editProfile _parserFn$Mutation$editProfile(
  Map<String, dynamic> data,
) => Mutation$editProfile.fromJson(data);
typedef OnMutationCompleted$Mutation$editProfile =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$editProfile?);

class Options$Mutation$editProfile
    extends graphql.MutationOptions<Mutation$editProfile> {
  Options$Mutation$editProfile({
    String? operationName,
    required Variables$Mutation$editProfile variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$editProfile? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$editProfile? onCompleted,
    graphql.OnMutationUpdate<Mutation$editProfile>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$editProfile(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationeditProfile,
         parserFn: _parserFn$Mutation$editProfile,
       );

  final OnMutationCompleted$Mutation$editProfile? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$editProfile
    extends graphql.WatchQueryOptions<Mutation$editProfile> {
  WatchOptions$Mutation$editProfile({
    String? operationName,
    required Variables$Mutation$editProfile variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$editProfile? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeMutationeditProfile,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$editProfile,
       );
}

extension ClientExtension$Mutation$editProfile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$editProfile>> mutate$editProfile(
    Options$Mutation$editProfile options,
  ) async => await this.mutate(options);
  graphql.ObservableQuery<Mutation$editProfile> watchMutation$editProfile(
    WatchOptions$Mutation$editProfile options,
  ) => this.watchMutation(options);
}

class Mutation$editProfile$HookResult {
  Mutation$editProfile$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$editProfile runMutation;

  final graphql.QueryResult<Mutation$editProfile> result;
}

Mutation$editProfile$HookResult useMutation$editProfile([
  WidgetOptions$Mutation$editProfile? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$editProfile(),
  );
  return Mutation$editProfile$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$editProfile> useWatchMutation$editProfile(
  WatchOptions$Mutation$editProfile options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$editProfile
    extends graphql.MutationOptions<Mutation$editProfile> {
  WidgetOptions$Mutation$editProfile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$editProfile? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$editProfile? onCompleted,
    graphql.OnMutationUpdate<Mutation$editProfile>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null ? null : _parserFn$Mutation$editProfile(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationeditProfile,
         parserFn: _parserFn$Mutation$editProfile,
       );

  final OnMutationCompleted$Mutation$editProfile? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$editProfile =
    graphql.MultiSourceResult<Mutation$editProfile> Function(
      Variables$Mutation$editProfile, {
      Object? optimisticResult,
      Mutation$editProfile? typedOptimisticResult,
    });
typedef Builder$Mutation$editProfile =
    widgets.Widget Function(
      RunMutation$Mutation$editProfile,
      graphql.QueryResult<Mutation$editProfile>?,
    );

class Mutation$editProfile$Widget
    extends graphql_flutter.Mutation<Mutation$editProfile> {
  Mutation$editProfile$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$editProfile? options,
    required Builder$Mutation$editProfile builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$editProfile(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Mutation$editProfile$userEditProfile {
  Mutation$editProfile$userEditProfile({
    this.problem,
    this.user,
    this.$__typename = 'EditProfileResponse',
  });

  factory Mutation$editProfile$userEditProfile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$problem = json['problem'];
    final l$user = json['user'];
    final l$$__typename = json['__typename'];
    return Mutation$editProfile$userEditProfile(
      problem: l$problem == null
          ? null
          : Mutation$editProfile$userEditProfile$problem.fromJson(
              (l$problem as Map<String, dynamic>),
            ),
      user: l$user == null
          ? null
          : Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$editProfile$userEditProfile$problem? problem;

  final Fragment$User? user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$problem = problem;
    _resultData['problem'] = l$problem?.toJson();
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$problem = problem;
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$problem, l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$editProfile$userEditProfile ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$problem = problem;
    final lOther$problem = other.problem;
    if (l$problem != lOther$problem) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$editProfile$userEditProfile
    on Mutation$editProfile$userEditProfile {
  CopyWith$Mutation$editProfile$userEditProfile<
    Mutation$editProfile$userEditProfile
  >
  get copyWith => CopyWith$Mutation$editProfile$userEditProfile(this, (i) => i);
}

abstract class CopyWith$Mutation$editProfile$userEditProfile<TRes> {
  factory CopyWith$Mutation$editProfile$userEditProfile(
    Mutation$editProfile$userEditProfile instance,
    TRes Function(Mutation$editProfile$userEditProfile) then,
  ) = _CopyWithImpl$Mutation$editProfile$userEditProfile;

  factory CopyWith$Mutation$editProfile$userEditProfile.stub(TRes res) =
      _CopyWithStubImpl$Mutation$editProfile$userEditProfile;

  TRes call({
    Mutation$editProfile$userEditProfile$problem? problem,
    Fragment$User? user,
    String? $__typename,
  });
  CopyWith$Mutation$editProfile$userEditProfile$problem<TRes> get problem;
  CopyWith$Fragment$User<TRes> get user;
}

class _CopyWithImpl$Mutation$editProfile$userEditProfile<TRes>
    implements CopyWith$Mutation$editProfile$userEditProfile<TRes> {
  _CopyWithImpl$Mutation$editProfile$userEditProfile(
    this._instance,
    this._then,
  );

  final Mutation$editProfile$userEditProfile _instance;

  final TRes Function(Mutation$editProfile$userEditProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? problem = _undefined,
    Object? user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$editProfile$userEditProfile(
      problem: problem == _undefined
          ? _instance.problem
          : (problem as Mutation$editProfile$userEditProfile$problem?),
      user: user == _undefined ? _instance.user : (user as Fragment$User?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$editProfile$userEditProfile$problem<TRes> get problem {
    final local$problem = _instance.problem;
    return local$problem == null
        ? CopyWith$Mutation$editProfile$userEditProfile$problem.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$editProfile$userEditProfile$problem(
            local$problem,
            (e) => call(problem: e),
          );
  }

  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$User.stub(_then(_instance))
        : CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Mutation$editProfile$userEditProfile<TRes>
    implements CopyWith$Mutation$editProfile$userEditProfile<TRes> {
  _CopyWithStubImpl$Mutation$editProfile$userEditProfile(this._res);

  TRes _res;

  call({
    Mutation$editProfile$userEditProfile$problem? problem,
    Fragment$User? user,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$editProfile$userEditProfile$problem<TRes> get problem =>
      CopyWith$Mutation$editProfile$userEditProfile$problem.stub(_res);

  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);
}

class Mutation$editProfile$userEditProfile$problem {
  Mutation$editProfile$userEditProfile$problem({required this.$__typename});

  factory Mutation$editProfile$userEditProfile$problem.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json["__typename"] as String) {
      case "EmailAlreadyUsedProblem":
        return Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem.fromJson(
          json,
        );

      case "PhoneAlreadyUsedProblem":
        return Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem.fromJson(
          json,
        );

      default:
        final l$$__typename = json['__typename'];
        return Mutation$editProfile$userEditProfile$problem(
          $__typename: (l$$__typename as String),
        );
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$editProfile$userEditProfile$problem ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$editProfile$userEditProfile$problem
    on Mutation$editProfile$userEditProfile$problem {
  CopyWith$Mutation$editProfile$userEditProfile$problem<
    Mutation$editProfile$userEditProfile$problem
  >
  get copyWith =>
      CopyWith$Mutation$editProfile$userEditProfile$problem(this, (i) => i);
  _T when<_T>({
    required _T Function(
      Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem,
    )
    emailAlreadyUsedProblem,
    required _T Function(
      Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem,
    )
    phoneAlreadyUsedProblem,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "EmailAlreadyUsedProblem":
        return emailAlreadyUsedProblem(
          this
              as Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem,
        );

      case "PhoneAlreadyUsedProblem":
        return phoneAlreadyUsedProblem(
          this
              as Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem,
        );

      default:
        return orElse();
    }
  }

  _T maybeWhen<_T>({
    _T Function(
      Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem,
    )?
    emailAlreadyUsedProblem,
    _T Function(
      Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem,
    )?
    phoneAlreadyUsedProblem,
    required _T Function() orElse,
  }) {
    switch ($__typename) {
      case "EmailAlreadyUsedProblem":
        if (emailAlreadyUsedProblem != null) {
          return emailAlreadyUsedProblem(
            this
                as Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem,
          );
        } else {
          return orElse();
        }

      case "PhoneAlreadyUsedProblem":
        if (phoneAlreadyUsedProblem != null) {
          return phoneAlreadyUsedProblem(
            this
                as Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem,
          );
        } else {
          return orElse();
        }

      default:
        return orElse();
    }
  }
}

abstract class CopyWith$Mutation$editProfile$userEditProfile$problem<TRes> {
  factory CopyWith$Mutation$editProfile$userEditProfile$problem(
    Mutation$editProfile$userEditProfile$problem instance,
    TRes Function(Mutation$editProfile$userEditProfile$problem) then,
  ) = _CopyWithImpl$Mutation$editProfile$userEditProfile$problem;

  factory CopyWith$Mutation$editProfile$userEditProfile$problem.stub(TRes res) =
      _CopyWithStubImpl$Mutation$editProfile$userEditProfile$problem;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Mutation$editProfile$userEditProfile$problem<TRes>
    implements CopyWith$Mutation$editProfile$userEditProfile$problem<TRes> {
  _CopyWithImpl$Mutation$editProfile$userEditProfile$problem(
    this._instance,
    this._then,
  );

  final Mutation$editProfile$userEditProfile$problem _instance;

  final TRes Function(Mutation$editProfile$userEditProfile$problem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) => _then(
    Mutation$editProfile$userEditProfile$problem(
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$editProfile$userEditProfile$problem<TRes>
    implements CopyWith$Mutation$editProfile$userEditProfile$problem<TRes> {
  _CopyWithStubImpl$Mutation$editProfile$userEditProfile$problem(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem
    implements Mutation$editProfile$userEditProfile$problem {
  Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem({
    required this.message,
    this.$__typename = 'EmailAlreadyUsedProblem',
  });

  factory Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem
    on Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem {
  CopyWith$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem<
    Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem
  >
  get copyWith =>
      CopyWith$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem<
  TRes
> {
  factory CopyWith$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem(
    Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem
    instance,
    TRes Function(
      Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem,
    )
    then,
  ) = _CopyWithImpl$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem;

  factory CopyWith$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem<
  TRes
>
    implements
        CopyWith$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem<
          TRes
        > {
  _CopyWithImpl$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem(
    this._instance,
    this._then,
  );

  final Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem
  _instance;

  final TRes Function(
    Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem<
  TRes
>
    implements
        CopyWith$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem<
          TRes
        > {
  _CopyWithStubImpl$Mutation$editProfile$userEditProfile$problem$$EmailAlreadyUsedProblem(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem
    implements Mutation$editProfile$userEditProfile$problem {
  Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem({
    required this.message,
    this.$__typename = 'PhoneAlreadyUsedProblem',
  });

  factory Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem(
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([l$message, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem
    on Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem {
  CopyWith$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem<
    Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem
  >
  get copyWith =>
      CopyWith$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem<
  TRes
> {
  factory CopyWith$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem(
    Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem
    instance,
    TRes Function(
      Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem,
    )
    then,
  ) = _CopyWithImpl$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem;

  factory CopyWith$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem;

  TRes call({String? message, String? $__typename});
}

class _CopyWithImpl$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem<
  TRes
>
    implements
        CopyWith$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem<
          TRes
        > {
  _CopyWithImpl$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem(
    this._instance,
    this._then,
  );

  final Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem
  _instance;

  final TRes Function(
    Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? message = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem(
          message: message == _undefined || message == null
              ? _instance.message
              : (message as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem<
  TRes
>
    implements
        CopyWith$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem<
          TRes
        > {
  _CopyWithStubImpl$Mutation$editProfile$userEditProfile$problem$$PhoneAlreadyUsedProblem(
    this._res,
  );

  TRes _res;

  call({String? message, String? $__typename}) => _res;
}

class Query$GetCurrentUser {
  Query$GetCurrentUser({required this.userMe, this.$__typename = 'Query'});

  factory Query$GetCurrentUser.fromJson(Map<String, dynamic> json) {
    final l$userMe = json['userMe'];
    final l$$__typename = json['__typename'];
    return Query$GetCurrentUser(
      userMe: Fragment$User.fromJson((l$userMe as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$User userMe;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userMe = userMe;
    _resultData['userMe'] = l$userMe.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userMe = userMe;
    final l$$__typename = $__typename;
    return Object.hashAll([l$userMe, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCurrentUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userMe = userMe;
    final lOther$userMe = other.userMe;
    if (l$userMe != lOther$userMe) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetCurrentUser on Query$GetCurrentUser {
  CopyWith$Query$GetCurrentUser<Query$GetCurrentUser> get copyWith =>
      CopyWith$Query$GetCurrentUser(this, (i) => i);
}

abstract class CopyWith$Query$GetCurrentUser<TRes> {
  factory CopyWith$Query$GetCurrentUser(
    Query$GetCurrentUser instance,
    TRes Function(Query$GetCurrentUser) then,
  ) = _CopyWithImpl$Query$GetCurrentUser;

  factory CopyWith$Query$GetCurrentUser.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCurrentUser;

  TRes call({Fragment$User? userMe, String? $__typename});
  CopyWith$Fragment$User<TRes> get userMe;
}

class _CopyWithImpl$Query$GetCurrentUser<TRes>
    implements CopyWith$Query$GetCurrentUser<TRes> {
  _CopyWithImpl$Query$GetCurrentUser(this._instance, this._then);

  final Query$GetCurrentUser _instance;

  final TRes Function(Query$GetCurrentUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? userMe = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetCurrentUser(
          userMe: userMe == _undefined || userMe == null
              ? _instance.userMe
              : (userMe as Fragment$User),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Fragment$User<TRes> get userMe {
    final local$userMe = _instance.userMe;
    return CopyWith$Fragment$User(local$userMe, (e) => call(userMe: e));
  }
}

class _CopyWithStubImpl$Query$GetCurrentUser<TRes>
    implements CopyWith$Query$GetCurrentUser<TRes> {
  _CopyWithStubImpl$Query$GetCurrentUser(this._res);

  TRes _res;

  call({Fragment$User? userMe, String? $__typename}) => _res;

  CopyWith$Fragment$User<TRes> get userMe => CopyWith$Fragment$User.stub(_res);
}

const documentNodeQueryGetCurrentUser = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetCurrentUser'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'userMe'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FragmentSpreadNode(
                  name: NameNode(value: 'User'),
                  directives: [],
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionUser,
  ],
);
Query$GetCurrentUser _parserFn$Query$GetCurrentUser(
  Map<String, dynamic> data,
) => Query$GetCurrentUser.fromJson(data);
typedef OnQueryComplete$Query$GetCurrentUser =
    FutureOr<void> Function(Map<String, dynamic>?, Query$GetCurrentUser?);

class Options$Query$GetCurrentUser
    extends graphql.QueryOptions<Query$GetCurrentUser> {
  Options$Query$GetCurrentUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCurrentUser? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCurrentUser? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$GetCurrentUser(data),
               ),
         onError: onError,
         document: documentNodeQueryGetCurrentUser,
         parserFn: _parserFn$Query$GetCurrentUser,
       );

  final OnQueryComplete$Query$GetCurrentUser? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$GetCurrentUser
    extends graphql.WatchQueryOptions<Query$GetCurrentUser> {
  WatchOptions$Query$GetCurrentUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCurrentUser? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryGetCurrentUser,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$GetCurrentUser,
       );
}

class FetchMoreOptions$Query$GetCurrentUser extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCurrentUser({
    required graphql.UpdateQuery updateQuery,
  }) : super(
         updateQuery: updateQuery,
         document: documentNodeQueryGetCurrentUser,
       );
}

extension ClientExtension$Query$GetCurrentUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCurrentUser>> query$GetCurrentUser([
    Options$Query$GetCurrentUser? options,
  ]) async => await this.query(options ?? Options$Query$GetCurrentUser());
  graphql.ObservableQuery<Query$GetCurrentUser> watchQuery$GetCurrentUser([
    WatchOptions$Query$GetCurrentUser? options,
  ]) => this.watchQuery(options ?? WatchOptions$Query$GetCurrentUser());
  void writeQuery$GetCurrentUser({
    required Query$GetCurrentUser data,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryGetCurrentUser),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$GetCurrentUser? readQuery$GetCurrentUser({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetCurrentUser),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCurrentUser.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCurrentUser> useQuery$GetCurrentUser([
  Options$Query$GetCurrentUser? options,
]) => graphql_flutter.useQuery(options ?? Options$Query$GetCurrentUser());
graphql.ObservableQuery<Query$GetCurrentUser> useWatchQuery$GetCurrentUser([
  WatchOptions$Query$GetCurrentUser? options,
]) => graphql_flutter.useWatchQuery(
  options ?? WatchOptions$Query$GetCurrentUser(),
);

class Query$GetCurrentUser$Widget
    extends graphql_flutter.Query<Query$GetCurrentUser> {
  Query$GetCurrentUser$Widget({
    widgets.Key? key,
    Options$Query$GetCurrentUser? options,
    required graphql_flutter.QueryBuilder<Query$GetCurrentUser> builder,
  }) : super(
         key: key,
         options: options ?? Options$Query$GetCurrentUser(),
         builder: builder,
       );
}

class Variables$Query$getPosts {
  factory Variables$Query$getPosts({required Input$FindPostsRequest input}) =>
      Variables$Query$getPosts._({r'input': input});

  Variables$Query$getPosts._(this._$data);

  factory Variables$Query$getPosts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$FindPostsRequest.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$getPosts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FindPostsRequest get input =>
      (_$data['input'] as Input$FindPostsRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$getPosts<Variables$Query$getPosts> get copyWith =>
      CopyWith$Variables$Query$getPosts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getPosts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$getPosts<TRes> {
  factory CopyWith$Variables$Query$getPosts(
    Variables$Query$getPosts instance,
    TRes Function(Variables$Query$getPosts) then,
  ) = _CopyWithImpl$Variables$Query$getPosts;

  factory CopyWith$Variables$Query$getPosts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getPosts;

  TRes call({Input$FindPostsRequest? input});
}

class _CopyWithImpl$Variables$Query$getPosts<TRes>
    implements CopyWith$Variables$Query$getPosts<TRes> {
  _CopyWithImpl$Variables$Query$getPosts(this._instance, this._then);

  final Variables$Query$getPosts _instance;

  final TRes Function(Variables$Query$getPosts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$getPosts._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$FindPostsRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$getPosts<TRes>
    implements CopyWith$Variables$Query$getPosts<TRes> {
  _CopyWithStubImpl$Variables$Query$getPosts(this._res);

  TRes _res;

  call({Input$FindPostsRequest? input}) => _res;
}

class Query$getPosts {
  Query$getPosts({required this.posts, this.$__typename = 'Query'});

  factory Query$getPosts.fromJson(Map<String, dynamic> json) {
    final l$posts = json['posts'];
    final l$$__typename = json['__typename'];
    return Query$getPosts(
      posts: Query$getPosts$posts.fromJson((l$posts as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getPosts$posts posts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$posts = posts;
    _resultData['posts'] = l$posts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$posts = posts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$posts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getPosts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$posts = posts;
    final lOther$posts = other.posts;
    if (l$posts != lOther$posts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getPosts on Query$getPosts {
  CopyWith$Query$getPosts<Query$getPosts> get copyWith =>
      CopyWith$Query$getPosts(this, (i) => i);
}

abstract class CopyWith$Query$getPosts<TRes> {
  factory CopyWith$Query$getPosts(
    Query$getPosts instance,
    TRes Function(Query$getPosts) then,
  ) = _CopyWithImpl$Query$getPosts;

  factory CopyWith$Query$getPosts.stub(TRes res) =
      _CopyWithStubImpl$Query$getPosts;

  TRes call({Query$getPosts$posts? posts, String? $__typename});
  CopyWith$Query$getPosts$posts<TRes> get posts;
}

class _CopyWithImpl$Query$getPosts<TRes>
    implements CopyWith$Query$getPosts<TRes> {
  _CopyWithImpl$Query$getPosts(this._instance, this._then);

  final Query$getPosts _instance;

  final TRes Function(Query$getPosts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? posts = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$getPosts(
          posts: posts == _undefined || posts == null
              ? _instance.posts
              : (posts as Query$getPosts$posts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$getPosts$posts<TRes> get posts {
    final local$posts = _instance.posts;
    return CopyWith$Query$getPosts$posts(local$posts, (e) => call(posts: e));
  }
}

class _CopyWithStubImpl$Query$getPosts<TRes>
    implements CopyWith$Query$getPosts<TRes> {
  _CopyWithStubImpl$Query$getPosts(this._res);

  TRes _res;

  call({Query$getPosts$posts? posts, String? $__typename}) => _res;

  CopyWith$Query$getPosts$posts<TRes> get posts =>
      CopyWith$Query$getPosts$posts.stub(_res);
}

const documentNodeQuerygetPosts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getPosts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'FindPostsRequest'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'posts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Post'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PageAfter'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionPost,
    fragmentDefinitionUser,
    fragmentDefinitionPageAfter,
  ],
);
Query$getPosts _parserFn$Query$getPosts(Map<String, dynamic> data) =>
    Query$getPosts.fromJson(data);
typedef OnQueryComplete$Query$getPosts =
    FutureOr<void> Function(Map<String, dynamic>?, Query$getPosts?);

class Options$Query$getPosts extends graphql.QueryOptions<Query$getPosts> {
  Options$Query$getPosts({
    String? operationName,
    required Variables$Query$getPosts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getPosts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getPosts? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$getPosts(data),
               ),
         onError: onError,
         document: documentNodeQuerygetPosts,
         parserFn: _parserFn$Query$getPosts,
       );

  final OnQueryComplete$Query$getPosts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$getPosts
    extends graphql.WatchQueryOptions<Query$getPosts> {
  WatchOptions$Query$getPosts({
    String? operationName,
    required Variables$Query$getPosts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getPosts? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQuerygetPosts,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$getPosts,
       );
}

class FetchMoreOptions$Query$getPosts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getPosts({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$getPosts variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerygetPosts,
       );
}

extension ClientExtension$Query$getPosts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getPosts>> query$getPosts(
    Options$Query$getPosts options,
  ) async => await this.query(options);
  graphql.ObservableQuery<Query$getPosts> watchQuery$getPosts(
    WatchOptions$Query$getPosts options,
  ) => this.watchQuery(options);
  void writeQuery$getPosts({
    required Query$getPosts data,
    required Variables$Query$getPosts variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQuerygetPosts),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$getPosts? readQuery$getPosts({
    required Variables$Query$getPosts variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerygetPosts),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getPosts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getPosts> useQuery$getPosts(
  Options$Query$getPosts options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$getPosts> useWatchQuery$getPosts(
  WatchOptions$Query$getPosts options,
) => graphql_flutter.useWatchQuery(options);

class Query$getPosts$Widget extends graphql_flutter.Query<Query$getPosts> {
  Query$getPosts$Widget({
    widgets.Key? key,
    required Options$Query$getPosts options,
    required graphql_flutter.QueryBuilder<Query$getPosts> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$getPosts$posts {
  Query$getPosts$posts({
    this.data,
    this.pageInfo,
    this.$__typename = 'FindPostsPaginationResponse',
  });

  factory Query$getPosts$posts.fromJson(Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$getPosts$posts(
      data: (l$data as List<dynamic>?)
          ?.map((e) => Fragment$Post.fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageAfter.fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Post>? data;

  final Fragment$PageAfter? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$data == null ? null : Object.hashAll(l$data.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getPosts$posts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != null && lOther$data != null) {
      if (l$data.length != lOther$data.length) {
        return false;
      }
      for (int i = 0; i < l$data.length; i++) {
        final l$data$entry = l$data[i];
        final lOther$data$entry = lOther$data[i];
        if (l$data$entry != lOther$data$entry) {
          return false;
        }
      }
    } else if (l$data != lOther$data) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getPosts$posts on Query$getPosts$posts {
  CopyWith$Query$getPosts$posts<Query$getPosts$posts> get copyWith =>
      CopyWith$Query$getPosts$posts(this, (i) => i);
}

abstract class CopyWith$Query$getPosts$posts<TRes> {
  factory CopyWith$Query$getPosts$posts(
    Query$getPosts$posts instance,
    TRes Function(Query$getPosts$posts) then,
  ) = _CopyWithImpl$Query$getPosts$posts;

  factory CopyWith$Query$getPosts$posts.stub(TRes res) =
      _CopyWithStubImpl$Query$getPosts$posts;

  TRes call({
    List<Fragment$Post>? data,
    Fragment$PageAfter? pageInfo,
    String? $__typename,
  });
  TRes data(
    Iterable<Fragment$Post>? Function(
      Iterable<CopyWith$Fragment$Post<Fragment$Post>>?,
    )
    _fn,
  );
  CopyWith$Fragment$PageAfter<TRes> get pageInfo;
}

class _CopyWithImpl$Query$getPosts$posts<TRes>
    implements CopyWith$Query$getPosts$posts<TRes> {
  _CopyWithImpl$Query$getPosts$posts(this._instance, this._then);

  final Query$getPosts$posts _instance;

  final TRes Function(Query$getPosts$posts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getPosts$posts(
      data: data == _undefined
          ? _instance.data
          : (data as List<Fragment$Post>?),
      pageInfo: pageInfo == _undefined
          ? _instance.pageInfo
          : (pageInfo as Fragment$PageAfter?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes data(
    Iterable<Fragment$Post>? Function(
      Iterable<CopyWith$Fragment$Post<Fragment$Post>>?,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data?.map((e) => CopyWith$Fragment$Post(e, (i) => i)),
    )?.toList(),
  );

  CopyWith$Fragment$PageAfter<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageAfter.stub(_then(_instance))
        : CopyWith$Fragment$PageAfter(local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$getPosts$posts<TRes>
    implements CopyWith$Query$getPosts$posts<TRes> {
  _CopyWithStubImpl$Query$getPosts$posts(this._res);

  TRes _res;

  call({
    List<Fragment$Post>? data,
    Fragment$PageAfter? pageInfo,
    String? $__typename,
  }) => _res;

  data(_fn) => _res;

  CopyWith$Fragment$PageAfter<TRes> get pageInfo =>
      CopyWith$Fragment$PageAfter.stub(_res);
}

class Variables$Query$getMyPosts {
  factory Variables$Query$getMyPosts({
    required Input$FindMyPostsRequest input,
  }) => Variables$Query$getMyPosts._({r'input': input});

  Variables$Query$getMyPosts._(this._$data);

  factory Variables$Query$getMyPosts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$FindMyPostsRequest.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$getMyPosts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FindMyPostsRequest get input =>
      (_$data['input'] as Input$FindMyPostsRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$getMyPosts<Variables$Query$getMyPosts>
  get copyWith => CopyWith$Variables$Query$getMyPosts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getMyPosts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$getMyPosts<TRes> {
  factory CopyWith$Variables$Query$getMyPosts(
    Variables$Query$getMyPosts instance,
    TRes Function(Variables$Query$getMyPosts) then,
  ) = _CopyWithImpl$Variables$Query$getMyPosts;

  factory CopyWith$Variables$Query$getMyPosts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getMyPosts;

  TRes call({Input$FindMyPostsRequest? input});
}

class _CopyWithImpl$Variables$Query$getMyPosts<TRes>
    implements CopyWith$Variables$Query$getMyPosts<TRes> {
  _CopyWithImpl$Variables$Query$getMyPosts(this._instance, this._then);

  final Variables$Query$getMyPosts _instance;

  final TRes Function(Variables$Query$getMyPosts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$getMyPosts._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$FindMyPostsRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$getMyPosts<TRes>
    implements CopyWith$Variables$Query$getMyPosts<TRes> {
  _CopyWithStubImpl$Variables$Query$getMyPosts(this._res);

  TRes _res;

  call({Input$FindMyPostsRequest? input}) => _res;
}

class Query$getMyPosts {
  Query$getMyPosts({required this.myPosts, this.$__typename = 'Query'});

  factory Query$getMyPosts.fromJson(Map<String, dynamic> json) {
    final l$myPosts = json['myPosts'];
    final l$$__typename = json['__typename'];
    return Query$getMyPosts(
      myPosts: Query$getMyPosts$myPosts.fromJson(
        (l$myPosts as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getMyPosts$myPosts myPosts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$myPosts = myPosts;
    _resultData['myPosts'] = l$myPosts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$myPosts = myPosts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$myPosts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getMyPosts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$myPosts = myPosts;
    final lOther$myPosts = other.myPosts;
    if (l$myPosts != lOther$myPosts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMyPosts on Query$getMyPosts {
  CopyWith$Query$getMyPosts<Query$getMyPosts> get copyWith =>
      CopyWith$Query$getMyPosts(this, (i) => i);
}

abstract class CopyWith$Query$getMyPosts<TRes> {
  factory CopyWith$Query$getMyPosts(
    Query$getMyPosts instance,
    TRes Function(Query$getMyPosts) then,
  ) = _CopyWithImpl$Query$getMyPosts;

  factory CopyWith$Query$getMyPosts.stub(TRes res) =
      _CopyWithStubImpl$Query$getMyPosts;

  TRes call({Query$getMyPosts$myPosts? myPosts, String? $__typename});
  CopyWith$Query$getMyPosts$myPosts<TRes> get myPosts;
}

class _CopyWithImpl$Query$getMyPosts<TRes>
    implements CopyWith$Query$getMyPosts<TRes> {
  _CopyWithImpl$Query$getMyPosts(this._instance, this._then);

  final Query$getMyPosts _instance;

  final TRes Function(Query$getMyPosts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? myPosts = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$getMyPosts(
          myPosts: myPosts == _undefined || myPosts == null
              ? _instance.myPosts
              : (myPosts as Query$getMyPosts$myPosts),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$getMyPosts$myPosts<TRes> get myPosts {
    final local$myPosts = _instance.myPosts;
    return CopyWith$Query$getMyPosts$myPosts(
      local$myPosts,
      (e) => call(myPosts: e),
    );
  }
}

class _CopyWithStubImpl$Query$getMyPosts<TRes>
    implements CopyWith$Query$getMyPosts<TRes> {
  _CopyWithStubImpl$Query$getMyPosts(this._res);

  TRes _res;

  call({Query$getMyPosts$myPosts? myPosts, String? $__typename}) => _res;

  CopyWith$Query$getMyPosts$myPosts<TRes> get myPosts =>
      CopyWith$Query$getMyPosts$myPosts.stub(_res);
}

const documentNodeQuerygetMyPosts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getMyPosts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'FindMyPostsRequest'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'myPosts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Post'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PageAfter'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionPost,
    fragmentDefinitionUser,
    fragmentDefinitionPageAfter,
  ],
);
Query$getMyPosts _parserFn$Query$getMyPosts(Map<String, dynamic> data) =>
    Query$getMyPosts.fromJson(data);
typedef OnQueryComplete$Query$getMyPosts =
    FutureOr<void> Function(Map<String, dynamic>?, Query$getMyPosts?);

class Options$Query$getMyPosts extends graphql.QueryOptions<Query$getMyPosts> {
  Options$Query$getMyPosts({
    String? operationName,
    required Variables$Query$getMyPosts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getMyPosts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getMyPosts? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$getMyPosts(data),
               ),
         onError: onError,
         document: documentNodeQuerygetMyPosts,
         parserFn: _parserFn$Query$getMyPosts,
       );

  final OnQueryComplete$Query$getMyPosts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$getMyPosts
    extends graphql.WatchQueryOptions<Query$getMyPosts> {
  WatchOptions$Query$getMyPosts({
    String? operationName,
    required Variables$Query$getMyPosts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getMyPosts? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQuerygetMyPosts,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$getMyPosts,
       );
}

class FetchMoreOptions$Query$getMyPosts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getMyPosts({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$getMyPosts variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerygetMyPosts,
       );
}

extension ClientExtension$Query$getMyPosts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getMyPosts>> query$getMyPosts(
    Options$Query$getMyPosts options,
  ) async => await this.query(options);
  graphql.ObservableQuery<Query$getMyPosts> watchQuery$getMyPosts(
    WatchOptions$Query$getMyPosts options,
  ) => this.watchQuery(options);
  void writeQuery$getMyPosts({
    required Query$getMyPosts data,
    required Variables$Query$getMyPosts variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQuerygetMyPosts),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$getMyPosts? readQuery$getMyPosts({
    required Variables$Query$getMyPosts variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerygetMyPosts),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getMyPosts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getMyPosts> useQuery$getMyPosts(
  Options$Query$getMyPosts options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$getMyPosts> useWatchQuery$getMyPosts(
  WatchOptions$Query$getMyPosts options,
) => graphql_flutter.useWatchQuery(options);

class Query$getMyPosts$Widget extends graphql_flutter.Query<Query$getMyPosts> {
  Query$getMyPosts$Widget({
    widgets.Key? key,
    required Options$Query$getMyPosts options,
    required graphql_flutter.QueryBuilder<Query$getMyPosts> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$getMyPosts$myPosts {
  Query$getMyPosts$myPosts({
    this.data,
    this.pageInfo,
    this.$__typename = 'FindMyPostsPaginationResponse',
  });

  factory Query$getMyPosts$myPosts.fromJson(Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$getMyPosts$myPosts(
      data: (l$data as List<dynamic>?)
          ?.map((e) => Fragment$Post.fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageAfter.fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Post>? data;

  final Fragment$PageAfter? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$data == null ? null : Object.hashAll(l$data.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getMyPosts$myPosts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != null && lOther$data != null) {
      if (l$data.length != lOther$data.length) {
        return false;
      }
      for (int i = 0; i < l$data.length; i++) {
        final l$data$entry = l$data[i];
        final lOther$data$entry = lOther$data[i];
        if (l$data$entry != lOther$data$entry) {
          return false;
        }
      }
    } else if (l$data != lOther$data) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getMyPosts$myPosts
    on Query$getMyPosts$myPosts {
  CopyWith$Query$getMyPosts$myPosts<Query$getMyPosts$myPosts> get copyWith =>
      CopyWith$Query$getMyPosts$myPosts(this, (i) => i);
}

abstract class CopyWith$Query$getMyPosts$myPosts<TRes> {
  factory CopyWith$Query$getMyPosts$myPosts(
    Query$getMyPosts$myPosts instance,
    TRes Function(Query$getMyPosts$myPosts) then,
  ) = _CopyWithImpl$Query$getMyPosts$myPosts;

  factory CopyWith$Query$getMyPosts$myPosts.stub(TRes res) =
      _CopyWithStubImpl$Query$getMyPosts$myPosts;

  TRes call({
    List<Fragment$Post>? data,
    Fragment$PageAfter? pageInfo,
    String? $__typename,
  });
  TRes data(
    Iterable<Fragment$Post>? Function(
      Iterable<CopyWith$Fragment$Post<Fragment$Post>>?,
    )
    _fn,
  );
  CopyWith$Fragment$PageAfter<TRes> get pageInfo;
}

class _CopyWithImpl$Query$getMyPosts$myPosts<TRes>
    implements CopyWith$Query$getMyPosts$myPosts<TRes> {
  _CopyWithImpl$Query$getMyPosts$myPosts(this._instance, this._then);

  final Query$getMyPosts$myPosts _instance;

  final TRes Function(Query$getMyPosts$myPosts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getMyPosts$myPosts(
      data: data == _undefined
          ? _instance.data
          : (data as List<Fragment$Post>?),
      pageInfo: pageInfo == _undefined
          ? _instance.pageInfo
          : (pageInfo as Fragment$PageAfter?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes data(
    Iterable<Fragment$Post>? Function(
      Iterable<CopyWith$Fragment$Post<Fragment$Post>>?,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data?.map((e) => CopyWith$Fragment$Post(e, (i) => i)),
    )?.toList(),
  );

  CopyWith$Fragment$PageAfter<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageAfter.stub(_then(_instance))
        : CopyWith$Fragment$PageAfter(local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$getMyPosts$myPosts<TRes>
    implements CopyWith$Query$getMyPosts$myPosts<TRes> {
  _CopyWithStubImpl$Query$getMyPosts$myPosts(this._res);

  TRes _res;

  call({
    List<Fragment$Post>? data,
    Fragment$PageAfter? pageInfo,
    String? $__typename,
  }) => _res;

  data(_fn) => _res;

  CopyWith$Fragment$PageAfter<TRes> get pageInfo =>
      CopyWith$Fragment$PageAfter.stub(_res);
}

class Variables$Query$getFavPosts {
  factory Variables$Query$getFavPosts({
    required Input$FindFavouritePostsRequest input,
  }) => Variables$Query$getFavPosts._({r'input': input});

  Variables$Query$getFavPosts._(this._$data);

  factory Variables$Query$getFavPosts.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$FindFavouritePostsRequest.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$getFavPosts._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FindFavouritePostsRequest get input =>
      (_$data['input'] as Input$FindFavouritePostsRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$getFavPosts<Variables$Query$getFavPosts>
  get copyWith => CopyWith$Variables$Query$getFavPosts(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$getFavPosts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Query$getFavPosts<TRes> {
  factory CopyWith$Variables$Query$getFavPosts(
    Variables$Query$getFavPosts instance,
    TRes Function(Variables$Query$getFavPosts) then,
  ) = _CopyWithImpl$Variables$Query$getFavPosts;

  factory CopyWith$Variables$Query$getFavPosts.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$getFavPosts;

  TRes call({Input$FindFavouritePostsRequest? input});
}

class _CopyWithImpl$Variables$Query$getFavPosts<TRes>
    implements CopyWith$Variables$Query$getFavPosts<TRes> {
  _CopyWithImpl$Variables$Query$getFavPosts(this._instance, this._then);

  final Variables$Query$getFavPosts _instance;

  final TRes Function(Variables$Query$getFavPosts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$getFavPosts._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$FindFavouritePostsRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$getFavPosts<TRes>
    implements CopyWith$Variables$Query$getFavPosts<TRes> {
  _CopyWithStubImpl$Variables$Query$getFavPosts(this._res);

  TRes _res;

  call({Input$FindFavouritePostsRequest? input}) => _res;
}

class Query$getFavPosts {
  Query$getFavPosts({required this.favouritePosts, this.$__typename = 'Query'});

  factory Query$getFavPosts.fromJson(Map<String, dynamic> json) {
    final l$favouritePosts = json['favouritePosts'];
    final l$$__typename = json['__typename'];
    return Query$getFavPosts(
      favouritePosts: Query$getFavPosts$favouritePosts.fromJson(
        (l$favouritePosts as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$getFavPosts$favouritePosts favouritePosts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$favouritePosts = favouritePosts;
    _resultData['favouritePosts'] = l$favouritePosts.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$favouritePosts = favouritePosts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$favouritePosts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getFavPosts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$favouritePosts = favouritePosts;
    final lOther$favouritePosts = other.favouritePosts;
    if (l$favouritePosts != lOther$favouritePosts) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getFavPosts on Query$getFavPosts {
  CopyWith$Query$getFavPosts<Query$getFavPosts> get copyWith =>
      CopyWith$Query$getFavPosts(this, (i) => i);
}

abstract class CopyWith$Query$getFavPosts<TRes> {
  factory CopyWith$Query$getFavPosts(
    Query$getFavPosts instance,
    TRes Function(Query$getFavPosts) then,
  ) = _CopyWithImpl$Query$getFavPosts;

  factory CopyWith$Query$getFavPosts.stub(TRes res) =
      _CopyWithStubImpl$Query$getFavPosts;

  TRes call({
    Query$getFavPosts$favouritePosts? favouritePosts,
    String? $__typename,
  });
  CopyWith$Query$getFavPosts$favouritePosts<TRes> get favouritePosts;
}

class _CopyWithImpl$Query$getFavPosts<TRes>
    implements CopyWith$Query$getFavPosts<TRes> {
  _CopyWithImpl$Query$getFavPosts(this._instance, this._then);

  final Query$getFavPosts _instance;

  final TRes Function(Query$getFavPosts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? favouritePosts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getFavPosts(
      favouritePosts: favouritePosts == _undefined || favouritePosts == null
          ? _instance.favouritePosts
          : (favouritePosts as Query$getFavPosts$favouritePosts),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$getFavPosts$favouritePosts<TRes> get favouritePosts {
    final local$favouritePosts = _instance.favouritePosts;
    return CopyWith$Query$getFavPosts$favouritePosts(
      local$favouritePosts,
      (e) => call(favouritePosts: e),
    );
  }
}

class _CopyWithStubImpl$Query$getFavPosts<TRes>
    implements CopyWith$Query$getFavPosts<TRes> {
  _CopyWithStubImpl$Query$getFavPosts(this._res);

  TRes _res;

  call({
    Query$getFavPosts$favouritePosts? favouritePosts,
    String? $__typename,
  }) => _res;

  CopyWith$Query$getFavPosts$favouritePosts<TRes> get favouritePosts =>
      CopyWith$Query$getFavPosts$favouritePosts.stub(_res);
}

const documentNodeQuerygetFavPosts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'getFavPosts'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'input')),
          type: NamedTypeNode(
            name: NameNode(value: 'FindFavouritePostsRequest'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'favouritePosts'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: VariableNode(name: NameNode(value: 'input')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'data'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Post'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'PageAfter'),
                        directives: [],
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ],
                  ),
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
    fragmentDefinitionPost,
    fragmentDefinitionUser,
    fragmentDefinitionPageAfter,
  ],
);
Query$getFavPosts _parserFn$Query$getFavPosts(Map<String, dynamic> data) =>
    Query$getFavPosts.fromJson(data);
typedef OnQueryComplete$Query$getFavPosts =
    FutureOr<void> Function(Map<String, dynamic>?, Query$getFavPosts?);

class Options$Query$getFavPosts
    extends graphql.QueryOptions<Query$getFavPosts> {
  Options$Query$getFavPosts({
    String? operationName,
    required Variables$Query$getFavPosts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getFavPosts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$getFavPosts? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$getFavPosts(data),
               ),
         onError: onError,
         document: documentNodeQuerygetFavPosts,
         parserFn: _parserFn$Query$getFavPosts,
       );

  final OnQueryComplete$Query$getFavPosts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$getFavPosts
    extends graphql.WatchQueryOptions<Query$getFavPosts> {
  WatchOptions$Query$getFavPosts({
    String? operationName,
    required Variables$Query$getFavPosts variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$getFavPosts? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQuerygetFavPosts,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$getFavPosts,
       );
}

class FetchMoreOptions$Query$getFavPosts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$getFavPosts({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$getFavPosts variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerygetFavPosts,
       );
}

extension ClientExtension$Query$getFavPosts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$getFavPosts>> query$getFavPosts(
    Options$Query$getFavPosts options,
  ) async => await this.query(options);
  graphql.ObservableQuery<Query$getFavPosts> watchQuery$getFavPosts(
    WatchOptions$Query$getFavPosts options,
  ) => this.watchQuery(options);
  void writeQuery$getFavPosts({
    required Query$getFavPosts data,
    required Variables$Query$getFavPosts variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQuerygetFavPosts),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Query$getFavPosts? readQuery$getFavPosts({
    required Variables$Query$getFavPosts variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerygetFavPosts),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$getFavPosts.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$getFavPosts> useQuery$getFavPosts(
  Options$Query$getFavPosts options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$getFavPosts> useWatchQuery$getFavPosts(
  WatchOptions$Query$getFavPosts options,
) => graphql_flutter.useWatchQuery(options);

class Query$getFavPosts$Widget
    extends graphql_flutter.Query<Query$getFavPosts> {
  Query$getFavPosts$Widget({
    widgets.Key? key,
    required Options$Query$getFavPosts options,
    required graphql_flutter.QueryBuilder<Query$getFavPosts> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$getFavPosts$favouritePosts {
  Query$getFavPosts$favouritePosts({
    this.data,
    this.pageInfo,
    this.$__typename = 'FindFavouritePostsPaginationResponse',
  });

  factory Query$getFavPosts$favouritePosts.fromJson(Map<String, dynamic> json) {
    final l$data = json['data'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$getFavPosts$favouritePosts(
      data: (l$data as List<dynamic>?)
          ?.map((e) => Fragment$Post.fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: l$pageInfo == null
          ? null
          : Fragment$PageAfter.fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Post>? data;

  final Fragment$PageAfter? pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$data = data;
    _resultData['data'] = l$data?.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$data == null ? null : Object.hashAll(l$data.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$getFavPosts$favouritePosts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != null && lOther$data != null) {
      if (l$data.length != lOther$data.length) {
        return false;
      }
      for (int i = 0; i < l$data.length; i++) {
        final l$data$entry = l$data[i];
        final lOther$data$entry = lOther$data[i];
        if (l$data$entry != lOther$data$entry) {
          return false;
        }
      }
    } else if (l$data != lOther$data) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$getFavPosts$favouritePosts
    on Query$getFavPosts$favouritePosts {
  CopyWith$Query$getFavPosts$favouritePosts<Query$getFavPosts$favouritePosts>
  get copyWith => CopyWith$Query$getFavPosts$favouritePosts(this, (i) => i);
}

abstract class CopyWith$Query$getFavPosts$favouritePosts<TRes> {
  factory CopyWith$Query$getFavPosts$favouritePosts(
    Query$getFavPosts$favouritePosts instance,
    TRes Function(Query$getFavPosts$favouritePosts) then,
  ) = _CopyWithImpl$Query$getFavPosts$favouritePosts;

  factory CopyWith$Query$getFavPosts$favouritePosts.stub(TRes res) =
      _CopyWithStubImpl$Query$getFavPosts$favouritePosts;

  TRes call({
    List<Fragment$Post>? data,
    Fragment$PageAfter? pageInfo,
    String? $__typename,
  });
  TRes data(
    Iterable<Fragment$Post>? Function(
      Iterable<CopyWith$Fragment$Post<Fragment$Post>>?,
    )
    _fn,
  );
  CopyWith$Fragment$PageAfter<TRes> get pageInfo;
}

class _CopyWithImpl$Query$getFavPosts$favouritePosts<TRes>
    implements CopyWith$Query$getFavPosts$favouritePosts<TRes> {
  _CopyWithImpl$Query$getFavPosts$favouritePosts(this._instance, this._then);

  final Query$getFavPosts$favouritePosts _instance;

  final TRes Function(Query$getFavPosts$favouritePosts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$getFavPosts$favouritePosts(
      data: data == _undefined
          ? _instance.data
          : (data as List<Fragment$Post>?),
      pageInfo: pageInfo == _undefined
          ? _instance.pageInfo
          : (pageInfo as Fragment$PageAfter?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes data(
    Iterable<Fragment$Post>? Function(
      Iterable<CopyWith$Fragment$Post<Fragment$Post>>?,
    )
    _fn,
  ) => call(
    data: _fn(
      _instance.data?.map((e) => CopyWith$Fragment$Post(e, (i) => i)),
    )?.toList(),
  );

  CopyWith$Fragment$PageAfter<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return local$pageInfo == null
        ? CopyWith$Fragment$PageAfter.stub(_then(_instance))
        : CopyWith$Fragment$PageAfter(local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$getFavPosts$favouritePosts<TRes>
    implements CopyWith$Query$getFavPosts$favouritePosts<TRes> {
  _CopyWithStubImpl$Query$getFavPosts$favouritePosts(this._res);

  TRes _res;

  call({
    List<Fragment$Post>? data,
    Fragment$PageAfter? pageInfo,
    String? $__typename,
  }) => _res;

  data(_fn) => _res;

  CopyWith$Fragment$PageAfter<TRes> get pageInfo =>
      CopyWith$Fragment$PageAfter.stub(_res);
}
