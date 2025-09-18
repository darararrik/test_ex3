import '../../../../core/data/data_source/remote/graphql/schema.graphql.dart';
import 'package:gql/ast.dart';

class Variables$Query$GetPost {
  factory Variables$Query$GetPost({required Input$PostIdRequest input}) =>
      Variables$Query$GetPost._({r'input': input});

  Variables$Query$GetPost._(this._$data);

  factory Variables$Query$GetPost.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$PostIdRequest.fromJson(
      (l$input as Map<String, dynamic>),
    );
    return Variables$Query$GetPost._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PostIdRequest get input => (_$data['input'] as Input$PostIdRequest);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$GetPost<Variables$Query$GetPost> get copyWith =>
      CopyWith$Variables$Query$GetPost(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetPost || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$GetPost<TRes> {
  factory CopyWith$Variables$Query$GetPost(
    Variables$Query$GetPost instance,
    TRes Function(Variables$Query$GetPost) then,
  ) = _CopyWithImpl$Variables$Query$GetPost;

  factory CopyWith$Variables$Query$GetPost.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetPost;

  TRes call({Input$PostIdRequest? input});
}

class _CopyWithImpl$Variables$Query$GetPost<TRes>
    implements CopyWith$Variables$Query$GetPost<TRes> {
  _CopyWithImpl$Variables$Query$GetPost(this._instance, this._then);

  final Variables$Query$GetPost _instance;

  final TRes Function(Variables$Query$GetPost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(
    Variables$Query$GetPost._({
      ..._instance._$data,
      if (input != _undefined && input != null)
        'input': (input as Input$PostIdRequest),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$GetPost<TRes>
    implements CopyWith$Variables$Query$GetPost<TRes> {
  _CopyWithStubImpl$Variables$Query$GetPost(this._res);

  TRes _res;

  call({Input$PostIdRequest? input}) => _res;
}

class Query$GetPost {
  Query$GetPost({required this.post, this.$__typename = 'Query'});

  factory Query$GetPost.fromJson(Map<String, dynamic> json) {
    final l$post = json['post'];
    final l$$__typename = json['__typename'];
    return Query$GetPost(
      post: Query$GetPost$post.fromJson((l$post as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetPost$post post;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$post = post;
    _resultData['post'] = l$post.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$post = post;
    final l$$__typename = $__typename;
    return Object.hashAll([l$post, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPost || runtimeType != other.runtimeType) {
      return false;
    }
    final l$post = post;
    final lOther$post = other.post;
    if (l$post != lOther$post) {
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

extension UtilityExtension$Query$GetPost on Query$GetPost {
  CopyWith$Query$GetPost<Query$GetPost> get copyWith =>
      CopyWith$Query$GetPost(this, (i) => i);
}

abstract class CopyWith$Query$GetPost<TRes> {
  factory CopyWith$Query$GetPost(
    Query$GetPost instance,
    TRes Function(Query$GetPost) then,
  ) = _CopyWithImpl$Query$GetPost;

  factory CopyWith$Query$GetPost.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPost;

  TRes call({Query$GetPost$post? post, String? $__typename});
  CopyWith$Query$GetPost$post<TRes> get post;
}

class _CopyWithImpl$Query$GetPost<TRes>
    implements CopyWith$Query$GetPost<TRes> {
  _CopyWithImpl$Query$GetPost(this._instance, this._then);

  final Query$GetPost _instance;

  final TRes Function(Query$GetPost) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? post = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetPost(
          post: post == _undefined || post == null
              ? _instance.post
              : (post as Query$GetPost$post),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  CopyWith$Query$GetPost$post<TRes> get post {
    final local$post = _instance.post;
    return CopyWith$Query$GetPost$post(local$post, (e) => call(post: e));
  }
}

class _CopyWithStubImpl$Query$GetPost<TRes>
    implements CopyWith$Query$GetPost<TRes> {
  _CopyWithStubImpl$Query$GetPost(this._res);

  TRes _res;

  call({Query$GetPost$post? post, String? $__typename}) => _res;

  CopyWith$Query$GetPost$post<TRes> get post =>
      CopyWith$Query$GetPost$post.stub(_res);
}

const documentNodeQueryGetPost = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetPost'),
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
            name: NameNode(value: 'post'),
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
                  name: NameNode(value: 'id'),
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

class Query$GetPost$post {
  Query$GetPost$post({required this.id, this.$__typename = 'PostModel'});

  factory Query$GetPost$post.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetPost$post(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetPost$post || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetPost$post on Query$GetPost$post {
  CopyWith$Query$GetPost$post<Query$GetPost$post> get copyWith =>
      CopyWith$Query$GetPost$post(this, (i) => i);
}

abstract class CopyWith$Query$GetPost$post<TRes> {
  factory CopyWith$Query$GetPost$post(
    Query$GetPost$post instance,
    TRes Function(Query$GetPost$post) then,
  ) = _CopyWithImpl$Query$GetPost$post;

  factory CopyWith$Query$GetPost$post.stub(TRes res) =
      _CopyWithStubImpl$Query$GetPost$post;

  TRes call({String? id, String? $__typename});
}

class _CopyWithImpl$Query$GetPost$post<TRes>
    implements CopyWith$Query$GetPost$post<TRes> {
  _CopyWithImpl$Query$GetPost$post(this._instance, this._then);

  final Query$GetPost$post _instance;

  final TRes Function(Query$GetPost$post) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$GetPost$post(
          id: id == _undefined || id == null ? _instance.id : (id as String),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );
}

class _CopyWithStubImpl$Query$GetPost$post<TRes>
    implements CopyWith$Query$GetPost$post<TRes> {
  _CopyWithStubImpl$Query$GetPost$post(this._res);

  TRes _res;

  call({String? id, String? $__typename}) => _res;
}
