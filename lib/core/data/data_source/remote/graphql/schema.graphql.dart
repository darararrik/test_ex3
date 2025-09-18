class Input$CreatePostRequest {
  factory Input$CreatePostRequest({
    required String description,
    required String mediaUrl,
    required String title,
  }) => Input$CreatePostRequest._({
    r'description': description,
    r'mediaUrl': mediaUrl,
    r'title': title,
  });

  Input$CreatePostRequest._(this._$data);

  factory Input$CreatePostRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$description = data['description'];
    result$data['description'] = (l$description as String);
    final l$mediaUrl = data['mediaUrl'];
    result$data['mediaUrl'] = (l$mediaUrl as String);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    return Input$CreatePostRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String get description => (_$data['description'] as String);

  String get mediaUrl => (_$data['mediaUrl'] as String);

  String get title => (_$data['title'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$description = description;
    result$data['description'] = l$description;
    final l$mediaUrl = mediaUrl;
    result$data['mediaUrl'] = l$mediaUrl;
    final l$title = title;
    result$data['title'] = l$title;
    return result$data;
  }

  CopyWith$Input$CreatePostRequest<Input$CreatePostRequest> get copyWith =>
      CopyWith$Input$CreatePostRequest(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreatePostRequest || runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$mediaUrl = mediaUrl;
    final lOther$mediaUrl = other.mediaUrl;
    if (l$mediaUrl != lOther$mediaUrl) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$mediaUrl = mediaUrl;
    final l$title = title;
    return Object.hashAll([l$description, l$mediaUrl, l$title]);
  }
}

abstract class CopyWith$Input$CreatePostRequest<TRes> {
  factory CopyWith$Input$CreatePostRequest(
    Input$CreatePostRequest instance,
    TRes Function(Input$CreatePostRequest) then,
  ) = _CopyWithImpl$Input$CreatePostRequest;

  factory CopyWith$Input$CreatePostRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$CreatePostRequest;

  TRes call({String? description, String? mediaUrl, String? title});
}

class _CopyWithImpl$Input$CreatePostRequest<TRes>
    implements CopyWith$Input$CreatePostRequest<TRes> {
  _CopyWithImpl$Input$CreatePostRequest(this._instance, this._then);

  final Input$CreatePostRequest _instance;

  final TRes Function(Input$CreatePostRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? description = _undefined,
    Object? mediaUrl = _undefined,
    Object? title = _undefined,
  }) => _then(
    Input$CreatePostRequest._({
      ..._instance._$data,
      if (description != _undefined && description != null)
        'description': (description as String),
      if (mediaUrl != _undefined && mediaUrl != null)
        'mediaUrl': (mediaUrl as String),
      if (title != _undefined && title != null) 'title': (title as String),
    }),
  );
}

class _CopyWithStubImpl$Input$CreatePostRequest<TRes>
    implements CopyWith$Input$CreatePostRequest<TRes> {
  _CopyWithStubImpl$Input$CreatePostRequest(this._res);

  TRes _res;

  call({String? description, String? mediaUrl, String? title}) => _res;
}

class Input$EditProfileRequest {
  factory Input$EditProfileRequest({
    String? avatarUrl,
    String? birthDate,
    String? country,
    required String email,
    String? firstName,
    Enum$GenderType? gender,
    String? lastName,
    String? middleName,
    String? phone,
  }) => Input$EditProfileRequest._({
    if (avatarUrl != null) r'avatarUrl': avatarUrl,
    if (birthDate != null) r'birthDate': birthDate,
    if (country != null) r'country': country,
    r'email': email,
    if (firstName != null) r'firstName': firstName,
    if (gender != null) r'gender': gender,
    if (lastName != null) r'lastName': lastName,
    if (middleName != null) r'middleName': middleName,
    if (phone != null) r'phone': phone,
  });

  Input$EditProfileRequest._(this._$data);

  factory Input$EditProfileRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('avatarUrl')) {
      final l$avatarUrl = data['avatarUrl'];
      result$data['avatarUrl'] = (l$avatarUrl as String?);
    }
    if (data.containsKey('birthDate')) {
      final l$birthDate = data['birthDate'];
      result$data['birthDate'] = (l$birthDate as String?);
    }
    if (data.containsKey('country')) {
      final l$country = data['country'];
      result$data['country'] = (l$country as String?);
    }
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = l$gender == null
          ? null
          : fromJson$Enum$GenderType((l$gender as String));
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('middleName')) {
      final l$middleName = data['middleName'];
      result$data['middleName'] = (l$middleName as String?);
    }
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    return Input$EditProfileRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get avatarUrl => (_$data['avatarUrl'] as String?);

  String? get birthDate => (_$data['birthDate'] as String?);

  String? get country => (_$data['country'] as String?);

  String get email => (_$data['email'] as String);

  String? get firstName => (_$data['firstName'] as String?);

  Enum$GenderType? get gender => (_$data['gender'] as Enum$GenderType?);

  String? get lastName => (_$data['lastName'] as String?);

  String? get middleName => (_$data['middleName'] as String?);

  String? get phone => (_$data['phone'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('avatarUrl')) {
      final l$avatarUrl = avatarUrl;
      result$data['avatarUrl'] = l$avatarUrl;
    }
    if (_$data.containsKey('birthDate')) {
      final l$birthDate = birthDate;
      result$data['birthDate'] = l$birthDate;
    }
    if (_$data.containsKey('country')) {
      final l$country = country;
      result$data['country'] = l$country;
    }
    final l$email = email;
    result$data['email'] = l$email;
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender == null
          ? null
          : toJson$Enum$GenderType(l$gender);
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('middleName')) {
      final l$middleName = middleName;
      result$data['middleName'] = l$middleName;
    }
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    return result$data;
  }

  CopyWith$Input$EditProfileRequest<Input$EditProfileRequest> get copyWith =>
      CopyWith$Input$EditProfileRequest(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$EditProfileRequest ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (_$data.containsKey('avatarUrl') !=
        other._$data.containsKey('avatarUrl')) {
      return false;
    }
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$birthDate = birthDate;
    final lOther$birthDate = other.birthDate;
    if (_$data.containsKey('birthDate') !=
        other._$data.containsKey('birthDate')) {
      return false;
    }
    if (l$birthDate != lOther$birthDate) {
      return false;
    }
    final l$country = country;
    final lOther$country = other.country;
    if (_$data.containsKey('country') != other._$data.containsKey('country')) {
      return false;
    }
    if (l$country != lOther$country) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$middleName = middleName;
    final lOther$middleName = other.middleName;
    if (_$data.containsKey('middleName') !=
        other._$data.containsKey('middleName')) {
      return false;
    }
    if (l$middleName != lOther$middleName) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$avatarUrl = avatarUrl;
    final l$birthDate = birthDate;
    final l$country = country;
    final l$email = email;
    final l$firstName = firstName;
    final l$gender = gender;
    final l$lastName = lastName;
    final l$middleName = middleName;
    final l$phone = phone;
    return Object.hashAll([
      _$data.containsKey('avatarUrl') ? l$avatarUrl : const {},
      _$data.containsKey('birthDate') ? l$birthDate : const {},
      _$data.containsKey('country') ? l$country : const {},
      l$email,
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('middleName') ? l$middleName : const {},
      _$data.containsKey('phone') ? l$phone : const {},
    ]);
  }
}

abstract class CopyWith$Input$EditProfileRequest<TRes> {
  factory CopyWith$Input$EditProfileRequest(
    Input$EditProfileRequest instance,
    TRes Function(Input$EditProfileRequest) then,
  ) = _CopyWithImpl$Input$EditProfileRequest;

  factory CopyWith$Input$EditProfileRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$EditProfileRequest;

  TRes call({
    String? avatarUrl,
    String? birthDate,
    String? country,
    String? email,
    String? firstName,
    Enum$GenderType? gender,
    String? lastName,
    String? middleName,
    String? phone,
  });
}

class _CopyWithImpl$Input$EditProfileRequest<TRes>
    implements CopyWith$Input$EditProfileRequest<TRes> {
  _CopyWithImpl$Input$EditProfileRequest(this._instance, this._then);

  final Input$EditProfileRequest _instance;

  final TRes Function(Input$EditProfileRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? avatarUrl = _undefined,
    Object? birthDate = _undefined,
    Object? country = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? gender = _undefined,
    Object? lastName = _undefined,
    Object? middleName = _undefined,
    Object? phone = _undefined,
  }) => _then(
    Input$EditProfileRequest._({
      ..._instance._$data,
      if (avatarUrl != _undefined) 'avatarUrl': (avatarUrl as String?),
      if (birthDate != _undefined) 'birthDate': (birthDate as String?),
      if (country != _undefined) 'country': (country as String?),
      if (email != _undefined && email != null) 'email': (email as String),
      if (firstName != _undefined) 'firstName': (firstName as String?),
      if (gender != _undefined) 'gender': (gender as Enum$GenderType?),
      if (lastName != _undefined) 'lastName': (lastName as String?),
      if (middleName != _undefined) 'middleName': (middleName as String?),
      if (phone != _undefined) 'phone': (phone as String?),
    }),
  );
}

class _CopyWithStubImpl$Input$EditProfileRequest<TRes>
    implements CopyWith$Input$EditProfileRequest<TRes> {
  _CopyWithStubImpl$Input$EditProfileRequest(this._res);

  TRes _res;

  call({
    String? avatarUrl,
    String? birthDate,
    String? country,
    String? email,
    String? firstName,
    Enum$GenderType? gender,
    String? lastName,
    String? middleName,
    String? phone,
  }) => _res;
}

class Input$FindFavouritePostsRequest {
  factory Input$FindFavouritePostsRequest({String? afterCursor, int? limit}) =>
      Input$FindFavouritePostsRequest._({
        if (afterCursor != null) r'afterCursor': afterCursor,
        if (limit != null) r'limit': limit,
      });

  Input$FindFavouritePostsRequest._(this._$data);

  factory Input$FindFavouritePostsRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('afterCursor')) {
      final l$afterCursor = data['afterCursor'];
      result$data['afterCursor'] = (l$afterCursor as String?);
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Input$FindFavouritePostsRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get afterCursor => (_$data['afterCursor'] as String?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('afterCursor')) {
      final l$afterCursor = afterCursor;
      result$data['afterCursor'] = l$afterCursor;
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Input$FindFavouritePostsRequest<Input$FindFavouritePostsRequest>
  get copyWith => CopyWith$Input$FindFavouritePostsRequest(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FindFavouritePostsRequest ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$afterCursor = afterCursor;
    final lOther$afterCursor = other.afterCursor;
    if (_$data.containsKey('afterCursor') !=
        other._$data.containsKey('afterCursor')) {
      return false;
    }
    if (l$afterCursor != lOther$afterCursor) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$afterCursor = afterCursor;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('afterCursor') ? l$afterCursor : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Input$FindFavouritePostsRequest<TRes> {
  factory CopyWith$Input$FindFavouritePostsRequest(
    Input$FindFavouritePostsRequest instance,
    TRes Function(Input$FindFavouritePostsRequest) then,
  ) = _CopyWithImpl$Input$FindFavouritePostsRequest;

  factory CopyWith$Input$FindFavouritePostsRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$FindFavouritePostsRequest;

  TRes call({String? afterCursor, int? limit});
}

class _CopyWithImpl$Input$FindFavouritePostsRequest<TRes>
    implements CopyWith$Input$FindFavouritePostsRequest<TRes> {
  _CopyWithImpl$Input$FindFavouritePostsRequest(this._instance, this._then);

  final Input$FindFavouritePostsRequest _instance;

  final TRes Function(Input$FindFavouritePostsRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? afterCursor = _undefined, Object? limit = _undefined}) =>
      _then(
        Input$FindFavouritePostsRequest._({
          ..._instance._$data,
          if (afterCursor != _undefined)
            'afterCursor': (afterCursor as String?),
          if (limit != _undefined) 'limit': (limit as int?),
        }),
      );
}

class _CopyWithStubImpl$Input$FindFavouritePostsRequest<TRes>
    implements CopyWith$Input$FindFavouritePostsRequest<TRes> {
  _CopyWithStubImpl$Input$FindFavouritePostsRequest(this._res);

  TRes _res;

  call({String? afterCursor, int? limit}) => _res;
}

class Input$FindMyPostsRequest {
  factory Input$FindMyPostsRequest({String? afterCursor, int? limit}) =>
      Input$FindMyPostsRequest._({
        if (afterCursor != null) r'afterCursor': afterCursor,
        if (limit != null) r'limit': limit,
      });

  Input$FindMyPostsRequest._(this._$data);

  factory Input$FindMyPostsRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('afterCursor')) {
      final l$afterCursor = data['afterCursor'];
      result$data['afterCursor'] = (l$afterCursor as String?);
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    return Input$FindMyPostsRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get afterCursor => (_$data['afterCursor'] as String?);

  int? get limit => (_$data['limit'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('afterCursor')) {
      final l$afterCursor = afterCursor;
      result$data['afterCursor'] = l$afterCursor;
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    return result$data;
  }

  CopyWith$Input$FindMyPostsRequest<Input$FindMyPostsRequest> get copyWith =>
      CopyWith$Input$FindMyPostsRequest(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FindMyPostsRequest ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$afterCursor = afterCursor;
    final lOther$afterCursor = other.afterCursor;
    if (_$data.containsKey('afterCursor') !=
        other._$data.containsKey('afterCursor')) {
      return false;
    }
    if (l$afterCursor != lOther$afterCursor) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$afterCursor = afterCursor;
    final l$limit = limit;
    return Object.hashAll([
      _$data.containsKey('afterCursor') ? l$afterCursor : const {},
      _$data.containsKey('limit') ? l$limit : const {},
    ]);
  }
}

abstract class CopyWith$Input$FindMyPostsRequest<TRes> {
  factory CopyWith$Input$FindMyPostsRequest(
    Input$FindMyPostsRequest instance,
    TRes Function(Input$FindMyPostsRequest) then,
  ) = _CopyWithImpl$Input$FindMyPostsRequest;

  factory CopyWith$Input$FindMyPostsRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$FindMyPostsRequest;

  TRes call({String? afterCursor, int? limit});
}

class _CopyWithImpl$Input$FindMyPostsRequest<TRes>
    implements CopyWith$Input$FindMyPostsRequest<TRes> {
  _CopyWithImpl$Input$FindMyPostsRequest(this._instance, this._then);

  final Input$FindMyPostsRequest _instance;

  final TRes Function(Input$FindMyPostsRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? afterCursor = _undefined, Object? limit = _undefined}) =>
      _then(
        Input$FindMyPostsRequest._({
          ..._instance._$data,
          if (afterCursor != _undefined)
            'afterCursor': (afterCursor as String?),
          if (limit != _undefined) 'limit': (limit as int?),
        }),
      );
}

class _CopyWithStubImpl$Input$FindMyPostsRequest<TRes>
    implements CopyWith$Input$FindMyPostsRequest<TRes> {
  _CopyWithStubImpl$Input$FindMyPostsRequest(this._res);

  TRes _res;

  call({String? afterCursor, int? limit}) => _res;
}

class Input$FindPostsRequest {
  factory Input$FindPostsRequest({
    String? afterCursor,
    int? limit,
    required Enum$PostFilterType type,
  }) => Input$FindPostsRequest._({
    if (afterCursor != null) r'afterCursor': afterCursor,
    if (limit != null) r'limit': limit,
    r'type': type,
  });

  Input$FindPostsRequest._(this._$data);

  factory Input$FindPostsRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('afterCursor')) {
      final l$afterCursor = data['afterCursor'];
      result$data['afterCursor'] = (l$afterCursor as String?);
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    final l$type = data['type'];
    result$data['type'] = fromJson$Enum$PostFilterType((l$type as String));
    return Input$FindPostsRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get afterCursor => (_$data['afterCursor'] as String?);

  int? get limit => (_$data['limit'] as int?);

  Enum$PostFilterType get type => (_$data['type'] as Enum$PostFilterType);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('afterCursor')) {
      final l$afterCursor = afterCursor;
      result$data['afterCursor'] = l$afterCursor;
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    final l$type = type;
    result$data['type'] = toJson$Enum$PostFilterType(l$type);
    return result$data;
  }

  CopyWith$Input$FindPostsRequest<Input$FindPostsRequest> get copyWith =>
      CopyWith$Input$FindPostsRequest(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FindPostsRequest || runtimeType != other.runtimeType) {
      return false;
    }
    final l$afterCursor = afterCursor;
    final lOther$afterCursor = other.afterCursor;
    if (_$data.containsKey('afterCursor') !=
        other._$data.containsKey('afterCursor')) {
      return false;
    }
    if (l$afterCursor != lOther$afterCursor) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$afterCursor = afterCursor;
    final l$limit = limit;
    final l$type = type;
    return Object.hashAll([
      _$data.containsKey('afterCursor') ? l$afterCursor : const {},
      _$data.containsKey('limit') ? l$limit : const {},
      l$type,
    ]);
  }
}

abstract class CopyWith$Input$FindPostsRequest<TRes> {
  factory CopyWith$Input$FindPostsRequest(
    Input$FindPostsRequest instance,
    TRes Function(Input$FindPostsRequest) then,
  ) = _CopyWithImpl$Input$FindPostsRequest;

  factory CopyWith$Input$FindPostsRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$FindPostsRequest;

  TRes call({String? afterCursor, int? limit, Enum$PostFilterType? type});
}

class _CopyWithImpl$Input$FindPostsRequest<TRes>
    implements CopyWith$Input$FindPostsRequest<TRes> {
  _CopyWithImpl$Input$FindPostsRequest(this._instance, this._then);

  final Input$FindPostsRequest _instance;

  final TRes Function(Input$FindPostsRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? afterCursor = _undefined,
    Object? limit = _undefined,
    Object? type = _undefined,
  }) => _then(
    Input$FindPostsRequest._({
      ..._instance._$data,
      if (afterCursor != _undefined) 'afterCursor': (afterCursor as String?),
      if (limit != _undefined) 'limit': (limit as int?),
      if (type != _undefined && type != null)
        'type': (type as Enum$PostFilterType),
    }),
  );
}

class _CopyWithStubImpl$Input$FindPostsRequest<TRes>
    implements CopyWith$Input$FindPostsRequest<TRes> {
  _CopyWithStubImpl$Input$FindPostsRequest(this._res);

  TRes _res;

  call({String? afterCursor, int? limit, Enum$PostFilterType? type}) => _res;
}

class Input$PostIdRequest {
  factory Input$PostIdRequest({required String id}) =>
      Input$PostIdRequest._({r'id': id});

  Input$PostIdRequest._(this._$data);

  factory Input$PostIdRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$PostIdRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$PostIdRequest<Input$PostIdRequest> get copyWith =>
      CopyWith$Input$PostIdRequest(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PostIdRequest || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$PostIdRequest<TRes> {
  factory CopyWith$Input$PostIdRequest(
    Input$PostIdRequest instance,
    TRes Function(Input$PostIdRequest) then,
  ) = _CopyWithImpl$Input$PostIdRequest;

  factory CopyWith$Input$PostIdRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$PostIdRequest;

  TRes call({String? id});
}

class _CopyWithImpl$Input$PostIdRequest<TRes>
    implements CopyWith$Input$PostIdRequest<TRes> {
  _CopyWithImpl$Input$PostIdRequest(this._instance, this._then);

  final Input$PostIdRequest _instance;

  final TRes Function(Input$PostIdRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(
    Input$PostIdRequest._({
      ..._instance._$data,
      if (id != _undefined && id != null) 'id': (id as String),
    }),
  );
}

class _CopyWithStubImpl$Input$PostIdRequest<TRes>
    implements CopyWith$Input$PostIdRequest<TRes> {
  _CopyWithStubImpl$Input$PostIdRequest(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$SignInRequest {
  factory Input$SignInRequest({
    required String email,
    required String password,
  }) => Input$SignInRequest._({r'email': email, r'password': password});

  Input$SignInRequest._(this._$data);

  factory Input$SignInRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return Input$SignInRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWith$Input$SignInRequest<Input$SignInRequest> get copyWith =>
      CopyWith$Input$SignInRequest(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SignInRequest || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    return Object.hashAll([l$email, l$password]);
  }
}

abstract class CopyWith$Input$SignInRequest<TRes> {
  factory CopyWith$Input$SignInRequest(
    Input$SignInRequest instance,
    TRes Function(Input$SignInRequest) then,
  ) = _CopyWithImpl$Input$SignInRequest;

  factory CopyWith$Input$SignInRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$SignInRequest;

  TRes call({String? email, String? password});
}

class _CopyWithImpl$Input$SignInRequest<TRes>
    implements CopyWith$Input$SignInRequest<TRes> {
  _CopyWithImpl$Input$SignInRequest(this._instance, this._then);

  final Input$SignInRequest _instance;

  final TRes Function(Input$SignInRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? email = _undefined, Object? password = _undefined}) =>
      _then(
        Input$SignInRequest._({
          ..._instance._$data,
          if (email != _undefined && email != null) 'email': (email as String),
          if (password != _undefined && password != null)
            'password': (password as String),
        }),
      );
}

class _CopyWithStubImpl$Input$SignInRequest<TRes>
    implements CopyWith$Input$SignInRequest<TRes> {
  _CopyWithStubImpl$Input$SignInRequest(this._res);

  TRes _res;

  call({String? email, String? password}) => _res;
}

class Input$SignUpRequest {
  factory Input$SignUpRequest({
    required String email,
    required String password,
    required String passwordConfirm,
  }) => Input$SignUpRequest._({
    r'email': email,
    r'password': password,
    r'passwordConfirm': passwordConfirm,
  });

  Input$SignUpRequest._(this._$data);

  factory Input$SignUpRequest.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$passwordConfirm = data['passwordConfirm'];
    result$data['passwordConfirm'] = (l$passwordConfirm as String);
    return Input$SignUpRequest._(result$data);
  }

  Map<String, dynamic> _$data;

  String get email => (_$data['email'] as String);

  String get password => (_$data['password'] as String);

  String get passwordConfirm => (_$data['passwordConfirm'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$email = email;
    result$data['email'] = l$email;
    final l$password = password;
    result$data['password'] = l$password;
    final l$passwordConfirm = passwordConfirm;
    result$data['passwordConfirm'] = l$passwordConfirm;
    return result$data;
  }

  CopyWith$Input$SignUpRequest<Input$SignUpRequest> get copyWith =>
      CopyWith$Input$SignUpRequest(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SignUpRequest || runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$passwordConfirm = passwordConfirm;
    final lOther$passwordConfirm = other.passwordConfirm;
    if (l$passwordConfirm != lOther$passwordConfirm) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$password = password;
    final l$passwordConfirm = passwordConfirm;
    return Object.hashAll([l$email, l$password, l$passwordConfirm]);
  }
}

abstract class CopyWith$Input$SignUpRequest<TRes> {
  factory CopyWith$Input$SignUpRequest(
    Input$SignUpRequest instance,
    TRes Function(Input$SignUpRequest) then,
  ) = _CopyWithImpl$Input$SignUpRequest;

  factory CopyWith$Input$SignUpRequest.stub(TRes res) =
      _CopyWithStubImpl$Input$SignUpRequest;

  TRes call({String? email, String? password, String? passwordConfirm});
}

class _CopyWithImpl$Input$SignUpRequest<TRes>
    implements CopyWith$Input$SignUpRequest<TRes> {
  _CopyWithImpl$Input$SignUpRequest(this._instance, this._then);

  final Input$SignUpRequest _instance;

  final TRes Function(Input$SignUpRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? password = _undefined,
    Object? passwordConfirm = _undefined,
  }) => _then(
    Input$SignUpRequest._({
      ..._instance._$data,
      if (email != _undefined && email != null) 'email': (email as String),
      if (password != _undefined && password != null)
        'password': (password as String),
      if (passwordConfirm != _undefined && passwordConfirm != null)
        'passwordConfirm': (passwordConfirm as String),
    }),
  );
}

class _CopyWithStubImpl$Input$SignUpRequest<TRes>
    implements CopyWith$Input$SignUpRequest<TRes> {
  _CopyWithStubImpl$Input$SignUpRequest(this._res);

  TRes _res;

  call({String? email, String? password, String? passwordConfirm}) => _res;
}

enum Enum$GenderType {
  FEMALE,
  MALE,
  $unknown;

  factory Enum$GenderType.fromJson(String value) =>
      fromJson$Enum$GenderType(value);

  String toJson() => toJson$Enum$GenderType(this);
}

String toJson$Enum$GenderType(Enum$GenderType e) {
  switch (e) {
    case Enum$GenderType.FEMALE:
      return r'FEMALE';
    case Enum$GenderType.MALE:
      return r'MALE';
    case Enum$GenderType.$unknown:
      return r'$unknown';
  }
}

Enum$GenderType fromJson$Enum$GenderType(String value) {
  switch (value) {
    case r'FEMALE':
      return Enum$GenderType.FEMALE;
    case r'MALE':
      return Enum$GenderType.MALE;
    default:
      return Enum$GenderType.$unknown;
  }
}

enum Enum$PostFilterType {
  NEW,
  TOP,
  $unknown;

  factory Enum$PostFilterType.fromJson(String value) =>
      fromJson$Enum$PostFilterType(value);

  String toJson() => toJson$Enum$PostFilterType(this);
}

String toJson$Enum$PostFilterType(Enum$PostFilterType e) {
  switch (e) {
    case Enum$PostFilterType.NEW:
      return r'NEW';
    case Enum$PostFilterType.TOP:
      return r'TOP';
    case Enum$PostFilterType.$unknown:
      return r'$unknown';
  }
}

Enum$PostFilterType fromJson$Enum$PostFilterType(String value) {
  switch (value) {
    case r'NEW':
      return Enum$PostFilterType.NEW;
    case r'TOP':
      return Enum$PostFilterType.TOP;
    default:
      return Enum$PostFilterType.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{
  'EditProfileProblemUnion': {
    'EmailAlreadyUsedProblem',
    'PhoneAlreadyUsedProblem',
  },
};
