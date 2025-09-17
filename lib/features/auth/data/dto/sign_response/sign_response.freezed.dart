// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignResponse {

 String? get token; ProblemDto? get problem; UserDto? get user;
/// Create a copy of SignResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignResponseCopyWith<SignResponse> get copyWith => _$SignResponseCopyWithImpl<SignResponse>(this as SignResponse, _$identity);

  /// Serializes this SignResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.problem, problem) || other.problem == problem)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,problem,user);

@override
String toString() {
  return 'SignResponse(token: $token, problem: $problem, user: $user)';
}


}

/// @nodoc
abstract mixin class $SignResponseCopyWith<$Res>  {
  factory $SignResponseCopyWith(SignResponse value, $Res Function(SignResponse) _then) = _$SignResponseCopyWithImpl;
@useResult
$Res call({
 String? token, ProblemDto? problem, UserDto? user
});


$ProblemDtoCopyWith<$Res>? get problem;$UserDtoCopyWith<$Res>? get user;

}
/// @nodoc
class _$SignResponseCopyWithImpl<$Res>
    implements $SignResponseCopyWith<$Res> {
  _$SignResponseCopyWithImpl(this._self, this._then);

  final SignResponse _self;
  final $Res Function(SignResponse) _then;

/// Create a copy of SignResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? problem = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,problem: freezed == problem ? _self.problem : problem // ignore: cast_nullable_to_non_nullable
as ProblemDto?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto?,
  ));
}
/// Create a copy of SignResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProblemDtoCopyWith<$Res>? get problem {
    if (_self.problem == null) {
    return null;
  }

  return $ProblemDtoCopyWith<$Res>(_self.problem!, (value) {
    return _then(_self.copyWith(problem: value));
  });
}/// Create a copy of SignResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDtoCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignResponse].
extension SignResponsePatterns on SignResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignResponse value)  $default,){
final _that = this;
switch (_that) {
case _SignResponse():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SignResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? token,  ProblemDto? problem,  UserDto? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignResponse() when $default != null:
return $default(_that.token,_that.problem,_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? token,  ProblemDto? problem,  UserDto? user)  $default,) {final _that = this;
switch (_that) {
case _SignResponse():
return $default(_that.token,_that.problem,_that.user);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? token,  ProblemDto? problem,  UserDto? user)?  $default,) {final _that = this;
switch (_that) {
case _SignResponse() when $default != null:
return $default(_that.token,_that.problem,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignResponse implements SignResponse {
   _SignResponse({this.token, this.problem, this.user});
  factory _SignResponse.fromJson(Map<String, dynamic> json) => _$SignResponseFromJson(json);

@override final  String? token;
@override final  ProblemDto? problem;
@override final  UserDto? user;

/// Create a copy of SignResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignResponseCopyWith<_SignResponse> get copyWith => __$SignResponseCopyWithImpl<_SignResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignResponse&&(identical(other.token, token) || other.token == token)&&(identical(other.problem, problem) || other.problem == problem)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,problem,user);

@override
String toString() {
  return 'SignResponse(token: $token, problem: $problem, user: $user)';
}


}

/// @nodoc
abstract mixin class _$SignResponseCopyWith<$Res> implements $SignResponseCopyWith<$Res> {
  factory _$SignResponseCopyWith(_SignResponse value, $Res Function(_SignResponse) _then) = __$SignResponseCopyWithImpl;
@override @useResult
$Res call({
 String? token, ProblemDto? problem, UserDto? user
});


@override $ProblemDtoCopyWith<$Res>? get problem;@override $UserDtoCopyWith<$Res>? get user;

}
/// @nodoc
class __$SignResponseCopyWithImpl<$Res>
    implements _$SignResponseCopyWith<$Res> {
  __$SignResponseCopyWithImpl(this._self, this._then);

  final _SignResponse _self;
  final $Res Function(_SignResponse) _then;

/// Create a copy of SignResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? problem = freezed,Object? user = freezed,}) {
  return _then(_SignResponse(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,problem: freezed == problem ? _self.problem : problem // ignore: cast_nullable_to_non_nullable
as ProblemDto?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto?,
  ));
}

/// Create a copy of SignResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProblemDtoCopyWith<$Res>? get problem {
    if (_self.problem == null) {
    return null;
  }

  return $ProblemDtoCopyWith<$Res>(_self.problem!, (value) {
    return _then(_self.copyWith(problem: value));
  });
}/// Create a copy of SignResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDtoCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
