// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignUpRequestDto {

 String get email; String get password; String get passwordConfirm;
/// Create a copy of SignUpRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpRequestDtoCopyWith<SignUpRequestDto> get copyWith => _$SignUpRequestDtoCopyWithImpl<SignUpRequestDto>(this as SignUpRequestDto, _$identity);

  /// Serializes this SignUpRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpRequestDto&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirm, passwordConfirm) || other.passwordConfirm == passwordConfirm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,passwordConfirm);

@override
String toString() {
  return 'SignUpRequestDto(email: $email, password: $password, passwordConfirm: $passwordConfirm)';
}


}

/// @nodoc
abstract mixin class $SignUpRequestDtoCopyWith<$Res>  {
  factory $SignUpRequestDtoCopyWith(SignUpRequestDto value, $Res Function(SignUpRequestDto) _then) = _$SignUpRequestDtoCopyWithImpl;
@useResult
$Res call({
 String email, String password, String passwordConfirm
});




}
/// @nodoc
class _$SignUpRequestDtoCopyWithImpl<$Res>
    implements $SignUpRequestDtoCopyWith<$Res> {
  _$SignUpRequestDtoCopyWithImpl(this._self, this._then);

  final SignUpRequestDto _self;
  final $Res Function(SignUpRequestDto) _then;

/// Create a copy of SignUpRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,Object? passwordConfirm = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirm: null == passwordConfirm ? _self.passwordConfirm : passwordConfirm // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignUpRequestDto].
extension SignUpRequestDtoPatterns on SignUpRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignUpRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignUpRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignUpRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _SignUpRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignUpRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _SignUpRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String password,  String passwordConfirm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignUpRequestDto() when $default != null:
return $default(_that.email,_that.password,_that.passwordConfirm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String password,  String passwordConfirm)  $default,) {final _that = this;
switch (_that) {
case _SignUpRequestDto():
return $default(_that.email,_that.password,_that.passwordConfirm);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String password,  String passwordConfirm)?  $default,) {final _that = this;
switch (_that) {
case _SignUpRequestDto() when $default != null:
return $default(_that.email,_that.password,_that.passwordConfirm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignUpRequestDto implements SignUpRequestDto {
  const _SignUpRequestDto({required this.email, required this.password, required this.passwordConfirm});
  factory _SignUpRequestDto.fromJson(Map<String, dynamic> json) => _$SignUpRequestDtoFromJson(json);

@override final  String email;
@override final  String password;
@override final  String passwordConfirm;

/// Create a copy of SignUpRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpRequestDtoCopyWith<_SignUpRequestDto> get copyWith => __$SignUpRequestDtoCopyWithImpl<_SignUpRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignUpRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpRequestDto&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirm, passwordConfirm) || other.passwordConfirm == passwordConfirm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,password,passwordConfirm);

@override
String toString() {
  return 'SignUpRequestDto(email: $email, password: $password, passwordConfirm: $passwordConfirm)';
}


}

/// @nodoc
abstract mixin class _$SignUpRequestDtoCopyWith<$Res> implements $SignUpRequestDtoCopyWith<$Res> {
  factory _$SignUpRequestDtoCopyWith(_SignUpRequestDto value, $Res Function(_SignUpRequestDto) _then) = __$SignUpRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String email, String password, String passwordConfirm
});




}
/// @nodoc
class __$SignUpRequestDtoCopyWithImpl<$Res>
    implements _$SignUpRequestDtoCopyWith<$Res> {
  __$SignUpRequestDtoCopyWithImpl(this._self, this._then);

  final _SignUpRequestDto _self;
  final $Res Function(_SignUpRequestDto) _then;

/// Create a copy of SignUpRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? passwordConfirm = null,}) {
  return _then(_SignUpRequestDto(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirm: null == passwordConfirm ? _self.passwordConfirm : passwordConfirm // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
