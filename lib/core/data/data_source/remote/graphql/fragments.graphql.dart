import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$User {
  Fragment$User({
    required this.email,
    this.firstName,
    this.lastName,
    this.middleName,
    this.avatarUrl,
    this.birthDate,
    this.country,
    this.gender,
    this.phone,
    this.$__typename = 'UserModel',
  });

  factory Fragment$User.fromJson(Map<String, dynamic> json) {
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$middleName = json['middleName'];
    final l$avatarUrl = json['avatarUrl'];
    final l$birthDate = json['birthDate'];
    final l$country = json['country'];
    final l$gender = json['gender'];
    final l$phone = json['phone'];
    final l$$__typename = json['__typename'];
    return Fragment$User(
      email: (l$email as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      middleName: (l$middleName as String?),
      avatarUrl: (l$avatarUrl as String?),
      birthDate: (l$birthDate as String?),
      country: (l$country as String?),
      gender: (l$gender as String?),
      phone: (l$phone as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String email;

  final String? firstName;

  final String? lastName;

  final String? middleName;

  final String? avatarUrl;

  final String? birthDate;

  final String? country;

  final String? gender;

  final String? phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$email = email;
    _resultData['email'] = l$email;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$middleName = middleName;
    _resultData['middleName'] = l$middleName;
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$birthDate = birthDate;
    _resultData['birthDate'] = l$birthDate;
    final l$country = country;
    _resultData['country'] = l$country;
    final l$gender = gender;
    _resultData['gender'] = l$gender;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$middleName = middleName;
    final l$avatarUrl = avatarUrl;
    final l$birthDate = birthDate;
    final l$country = country;
    final l$gender = gender;
    final l$phone = phone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$email,
      l$firstName,
      l$lastName,
      l$middleName,
      l$avatarUrl,
      l$birthDate,
      l$country,
      l$gender,
      l$phone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$User || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$middleName = middleName;
    final lOther$middleName = other.middleName;
    if (l$middleName != lOther$middleName) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$birthDate = birthDate;
    final lOther$birthDate = other.birthDate;
    if (l$birthDate != lOther$birthDate) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (l$country != lOther$country) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
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

extension UtilityExtension$Fragment$User on Fragment$User {
  CopyWith$Fragment$User<Fragment$User> get copyWith =>
      CopyWith$Fragment$User(this, (i) => i);
}

abstract class CopyWith$Fragment$User<TRes> {
  factory CopyWith$Fragment$User(
    Fragment$User instance,
    TRes Function(Fragment$User) then,
  ) = _CopyWithImpl$Fragment$User;

  factory CopyWith$Fragment$User.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User;

  TRes call({
    String? email,
    String? firstName,
    String? lastName,
    String? middleName,
    String? avatarUrl,
    String? birthDate,
    String? country,
    String? gender,
    String? phone,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$User<TRes>
    implements CopyWith$Fragment$User<TRes> {
  _CopyWithImpl$Fragment$User(this._instance, this._then);

  final Fragment$User _instance;

  final TRes Function(Fragment$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? middleName = _undefined,
    Object? avatarUrl = _undefined,
    Object? birthDate = _undefined,
    Object? country = _undefined,
    Object? gender = _undefined,
    Object? phone = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$User(
      email: email == _undefined || email == null
          ? _instance.email
          : (email as String),
      firstName: firstName == _undefined
          ? _instance.firstName
          : (firstName as String?),
      lastName: lastName == _undefined
          ? _instance.lastName
          : (lastName as String?),
      middleName: middleName == _undefined
          ? _instance.middleName
          : (middleName as String?),
      avatarUrl: avatarUrl == _undefined
          ? _instance.avatarUrl
          : (avatarUrl as String?),
      birthDate: birthDate == _undefined
          ? _instance.birthDate
          : (birthDate as String?),
      country: country == _undefined ? _instance.country : (country as String?),
      gender: gender == _undefined ? _instance.gender : (gender as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$User<TRes>
    implements CopyWith$Fragment$User<TRes> {
  _CopyWithStubImpl$Fragment$User(this._res);

  TRes _res;

  call({
    String? email,
    String? firstName,
    String? lastName,
    String? middleName,
    String? avatarUrl,
    String? birthDate,
    String? country,
    String? gender,
    String? phone,
    String? $__typename,
  }) => _res;
}

const fragmentDefinitionUser = FragmentDefinitionNode(
  name: NameNode(value: 'User'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'UserModel'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'email'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'firstName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'lastName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'middleName'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'avatarUrl'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'birthDate'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'country'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'gender'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'phone'),
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
);
const documentNodeFragmentUser = DocumentNode(
  definitions: [fragmentDefinitionUser],
);

extension ClientExtension$Fragment$User on graphql.GraphQLClient {
  void writeFragment$User({
    required Fragment$User data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'User',
        document: documentNodeFragmentUser,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$User? readFragment$User({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'User',
          document: documentNodeFragmentUser,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$User.fromJson(result);
  }
}

class Fragment$Post {
  Fragment$Post({
    required this.author,
    required this.id,
    required this.createdAt,
    required this.title,
    required this.description,
    required this.isLiked,
    required this.likesCount,
    required this.mediaUrl,
    this.$__typename = 'PostModel',
  });

  factory Fragment$Post.fromJson(Map<String, dynamic> json) {
    final l$author = json['author'];
    final l$id = json['id'];
    final l$createdAt = json['createdAt'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$isLiked = json['isLiked'];
    final l$likesCount = json['likesCount'];
    final l$mediaUrl = json['mediaUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$Post(
      author: Fragment$User.fromJson((l$author as Map<String, dynamic>)),
      id: (l$id as String),
      createdAt: (l$createdAt as String),
      title: (l$title as String),
      description: (l$description as String),
      isLiked: (l$isLiked as bool),
      likesCount: (l$likesCount as num).toDouble(),
      mediaUrl: (l$mediaUrl as String),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$User author;

  final String id;

  final String createdAt;

  final String title;

  final String description;

  final bool isLiked;

  final double likesCount;

  final String mediaUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$author = author;
    _resultData['author'] = l$author.toJson();
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isLiked = isLiked;
    _resultData['isLiked'] = l$isLiked;
    final l$likesCount = likesCount;
    _resultData['likesCount'] = l$likesCount;
    final l$mediaUrl = mediaUrl;
    _resultData['mediaUrl'] = l$mediaUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$author = author;
    final l$id = id;
    final l$createdAt = createdAt;
    final l$title = title;
    final l$description = description;
    final l$isLiked = isLiked;
    final l$likesCount = likesCount;
    final l$mediaUrl = mediaUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$author,
      l$id,
      l$createdAt,
      l$title,
      l$description,
      l$isLiked,
      l$likesCount,
      l$mediaUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Post || runtimeType != other.runtimeType) {
      return false;
    }
    final l$author = author;
    final lOther$author = other.author;
    if (l$author != lOther$author) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$isLiked = isLiked;
    final lOther$isLiked = other.isLiked;
    if (l$isLiked != lOther$isLiked) {
      return false;
    }
    final l$likesCount = likesCount;
    final lOther$likesCount = other.likesCount;
    if (l$likesCount != lOther$likesCount) {
      return false;
    }
    final l$mediaUrl = mediaUrl;
    final lOther$mediaUrl = other.mediaUrl;
    if (l$mediaUrl != lOther$mediaUrl) {
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

extension UtilityExtension$Fragment$Post on Fragment$Post {
  CopyWith$Fragment$Post<Fragment$Post> get copyWith =>
      CopyWith$Fragment$Post(this, (i) => i);
}

abstract class CopyWith$Fragment$Post<TRes> {
  factory CopyWith$Fragment$Post(
    Fragment$Post instance,
    TRes Function(Fragment$Post) then,
  ) = _CopyWithImpl$Fragment$Post;

  factory CopyWith$Fragment$Post.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Post;

  TRes call({
    Fragment$User? author,
    String? id,
    String? createdAt,
    String? title,
    String? description,
    bool? isLiked,
    double? likesCount,
    String? mediaUrl,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get author;
}

class _CopyWithImpl$Fragment$Post<TRes>
    implements CopyWith$Fragment$Post<TRes> {
  _CopyWithImpl$Fragment$Post(this._instance, this._then);

  final Fragment$Post _instance;

  final TRes Function(Fragment$Post) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? author = _undefined,
    Object? id = _undefined,
    Object? createdAt = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? isLiked = _undefined,
    Object? likesCount = _undefined,
    Object? mediaUrl = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$Post(
      author: author == _undefined || author == null
          ? _instance.author
          : (author as Fragment$User),
      id: id == _undefined || id == null ? _instance.id : (id as String),
      createdAt: createdAt == _undefined || createdAt == null
          ? _instance.createdAt
          : (createdAt as String),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      description: description == _undefined || description == null
          ? _instance.description
          : (description as String),
      isLiked: isLiked == _undefined || isLiked == null
          ? _instance.isLiked
          : (isLiked as bool),
      likesCount: likesCount == _undefined || likesCount == null
          ? _instance.likesCount
          : (likesCount as double),
      mediaUrl: mediaUrl == _undefined || mediaUrl == null
          ? _instance.mediaUrl
          : (mediaUrl as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Fragment$User<TRes> get author {
    final local$author = _instance.author;
    return CopyWith$Fragment$User(local$author, (e) => call(author: e));
  }
}

class _CopyWithStubImpl$Fragment$Post<TRes>
    implements CopyWith$Fragment$Post<TRes> {
  _CopyWithStubImpl$Fragment$Post(this._res);

  TRes _res;

  call({
    Fragment$User? author,
    String? id,
    String? createdAt,
    String? title,
    String? description,
    bool? isLiked,
    double? likesCount,
    String? mediaUrl,
    String? $__typename,
  }) => _res;

  CopyWith$Fragment$User<TRes> get author => CopyWith$Fragment$User.stub(_res);
}

const fragmentDefinitionPost = FragmentDefinitionNode(
  name: NameNode(value: 'Post'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(name: NameNode(value: 'PostModel'), isNonNull: false),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'author'),
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
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'createdAt'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'description'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'isLiked'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'likesCount'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'mediaUrl'),
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
);
const documentNodeFragmentPost = DocumentNode(
  definitions: [fragmentDefinitionPost, fragmentDefinitionUser],
);

extension ClientExtension$Fragment$Post on graphql.GraphQLClient {
  void writeFragment$Post({
    required Fragment$Post data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'Post',
        document: documentNodeFragmentPost,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$Post? readFragment$Post({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Post',
          document: documentNodeFragmentPost,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Post.fromJson(result);
  }
}

class Fragment$PageAfter {
  Fragment$PageAfter({
    this.afterCursor,
    this.$__typename = 'PageAfterCursorInfo',
  });

  factory Fragment$PageAfter.fromJson(Map<String, dynamic> json) {
    final l$afterCursor = json['afterCursor'];
    final l$$__typename = json['__typename'];
    return Fragment$PageAfter(
      afterCursor: (l$afterCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? afterCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$afterCursor = afterCursor;
    _resultData['afterCursor'] = l$afterCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$afterCursor = afterCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$afterCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PageAfter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$afterCursor = afterCursor;
    final lOther$afterCursor = other.afterCursor;
    if (l$afterCursor != lOther$afterCursor) {
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

extension UtilityExtension$Fragment$PageAfter on Fragment$PageAfter {
  CopyWith$Fragment$PageAfter<Fragment$PageAfter> get copyWith =>
      CopyWith$Fragment$PageAfter(this, (i) => i);
}

abstract class CopyWith$Fragment$PageAfter<TRes> {
  factory CopyWith$Fragment$PageAfter(
    Fragment$PageAfter instance,
    TRes Function(Fragment$PageAfter) then,
  ) = _CopyWithImpl$Fragment$PageAfter;

  factory CopyWith$Fragment$PageAfter.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PageAfter;

  TRes call({String? afterCursor, String? $__typename});
}

class _CopyWithImpl$Fragment$PageAfter<TRes>
    implements CopyWith$Fragment$PageAfter<TRes> {
  _CopyWithImpl$Fragment$PageAfter(this._instance, this._then);

  final Fragment$PageAfter _instance;

  final TRes Function(Fragment$PageAfter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? afterCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Fragment$PageAfter(
      afterCursor: afterCursor == _undefined
          ? _instance.afterCursor
          : (afterCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Fragment$PageAfter<TRes>
    implements CopyWith$Fragment$PageAfter<TRes> {
  _CopyWithStubImpl$Fragment$PageAfter(this._res);

  TRes _res;

  call({String? afterCursor, String? $__typename}) => _res;
}

const fragmentDefinitionPageAfter = FragmentDefinitionNode(
  name: NameNode(value: 'PageAfter'),
  typeCondition: TypeConditionNode(
    on: NamedTypeNode(
      name: NameNode(value: 'PageAfterCursorInfo'),
      isNonNull: false,
    ),
  ),
  directives: [],
  selectionSet: SelectionSetNode(
    selections: [
      FieldNode(
        name: NameNode(value: 'afterCursor'),
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
);
const documentNodeFragmentPageAfter = DocumentNode(
  definitions: [fragmentDefinitionPageAfter],
);

extension ClientExtension$Fragment$PageAfter on graphql.GraphQLClient {
  void writeFragment$PageAfter({
    required Fragment$PageAfter data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) => this.writeFragment(
    graphql.FragmentRequest(
      idFields: idFields,
      fragment: const graphql.Fragment(
        fragmentName: 'PageAfter',
        document: documentNodeFragmentPageAfter,
      ),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );
  Fragment$PageAfter? readFragment$PageAfter({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PageAfter',
          document: documentNodeFragmentPageAfter,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PageAfter.fromJson(result);
  }
}
