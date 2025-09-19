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
