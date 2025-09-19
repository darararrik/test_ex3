// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignResponseDto {

 ProblemDto? get problem; String get token; UserDto get user;
/// Create a copy of SignResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignResponseDtoCopyWith<SignResponseDto> get copyWith => _$SignResponseDtoCopyWithImpl<SignResponseDto>(this as SignResponseDto, _$identity);

  /// Serializes this SignResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignResponseDto&&(identical(other.problem, problem) || other.problem == problem)&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,problem,token,user);

@override
String toString() {
  return 'SignResponseDto(problem: $problem, token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class $SignResponseDtoCopyWith<$Res>  {
  factory $SignResponseDtoCopyWith(SignResponseDto value, $Res Function(SignResponseDto) _then) = _$SignResponseDtoCopyWithImpl;
@useResult
$Res call({
 ProblemDto? problem, String token, UserDto user
});


$ProblemDtoCopyWith<$Res>? get problem;$UserDtoCopyWith<$Res> get user;

}
/// @nodoc
class _$SignResponseDtoCopyWithImpl<$Res>
    implements $SignResponseDtoCopyWith<$Res> {
  _$SignResponseDtoCopyWithImpl(this._self, this._then);

  final SignResponseDto _self;
  final $Res Function(SignResponseDto) _then;

/// Create a copy of SignResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? problem = freezed,Object? token = null,Object? user = null,}) {
  return _then(_self.copyWith(
problem: freezed == problem ? _self.problem : problem // ignore: cast_nullable_to_non_nullable
as ProblemDto?,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}
/// Create a copy of SignResponseDto
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
}/// Create a copy of SignResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [SignResponseDto].
extension SignResponseDtoPatterns on SignResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _SignResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _SignResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProblemDto? problem,  String token,  UserDto user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignResponseDto() when $default != null:
return $default(_that.problem,_that.token,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProblemDto? problem,  String token,  UserDto user)  $default,) {final _that = this;
switch (_that) {
case _SignResponseDto():
return $default(_that.problem,_that.token,_that.user);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProblemDto? problem,  String token,  UserDto user)?  $default,) {final _that = this;
switch (_that) {
case _SignResponseDto() when $default != null:
return $default(_that.problem,_that.token,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignResponseDto implements SignResponseDto {
   _SignResponseDto({this.problem, required this.token, required this.user});
  factory _SignResponseDto.fromJson(Map<String, dynamic> json) => _$SignResponseDtoFromJson(json);

@override final  ProblemDto? problem;
@override final  String token;
@override final  UserDto user;

/// Create a copy of SignResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignResponseDtoCopyWith<_SignResponseDto> get copyWith => __$SignResponseDtoCopyWithImpl<_SignResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignResponseDto&&(identical(other.problem, problem) || other.problem == problem)&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,problem,token,user);

@override
String toString() {
  return 'SignResponseDto(problem: $problem, token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class _$SignResponseDtoCopyWith<$Res> implements $SignResponseDtoCopyWith<$Res> {
  factory _$SignResponseDtoCopyWith(_SignResponseDto value, $Res Function(_SignResponseDto) _then) = __$SignResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 ProblemDto? problem, String token, UserDto user
});


@override $ProblemDtoCopyWith<$Res>? get problem;@override $UserDtoCopyWith<$Res> get user;

}
/// @nodoc
class __$SignResponseDtoCopyWithImpl<$Res>
    implements _$SignResponseDtoCopyWith<$Res> {
  __$SignResponseDtoCopyWithImpl(this._self, this._then);

  final _SignResponseDto _self;
  final $Res Function(_SignResponseDto) _then;

/// Create a copy of SignResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? problem = freezed,Object? token = null,Object? user = null,}) {
  return _then(_SignResponseDto(
problem: freezed == problem ? _self.problem : problem // ignore: cast_nullable_to_non_nullable
as ProblemDto?,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDto,
  ));
}

/// Create a copy of SignResponseDto
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
}/// Create a copy of SignResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get user {
  
  return $UserDtoCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
