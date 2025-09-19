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
