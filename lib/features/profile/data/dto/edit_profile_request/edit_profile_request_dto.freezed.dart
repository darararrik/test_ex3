// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditProfileRequestDto {

 String? get email; String? get avatarUrl;@DateTimeConverter() DateTime? get birthDate; String? get country; String? get firstName; String? get lastName; String? get middleName; String? get phone; Gender? get gender;
/// Create a copy of EditProfileRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditProfileRequestDtoCopyWith<EditProfileRequestDto> get copyWith => _$EditProfileRequestDtoCopyWithImpl<EditProfileRequestDto>(this as EditProfileRequestDto, _$identity);

  /// Serializes this EditProfileRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileRequestDto&&(identical(other.email, email) || other.email == email)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.country, country) || other.country == country)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,avatarUrl,birthDate,country,firstName,lastName,middleName,phone,gender);

@override
String toString() {
  return 'EditProfileRequestDto(email: $email, avatarUrl: $avatarUrl, birthDate: $birthDate, country: $country, firstName: $firstName, lastName: $lastName, middleName: $middleName, phone: $phone, gender: $gender)';
}


}

/// @nodoc
abstract mixin class $EditProfileRequestDtoCopyWith<$Res>  {
  factory $EditProfileRequestDtoCopyWith(EditProfileRequestDto value, $Res Function(EditProfileRequestDto) _then) = _$EditProfileRequestDtoCopyWithImpl;
@useResult
$Res call({
 String? email, String? avatarUrl,@DateTimeConverter() DateTime? birthDate, String? country, String? firstName, String? lastName, String? middleName, String? phone, Gender? gender
});




}
/// @nodoc
class _$EditProfileRequestDtoCopyWithImpl<$Res>
    implements $EditProfileRequestDtoCopyWith<$Res> {
  _$EditProfileRequestDtoCopyWithImpl(this._self, this._then);

  final EditProfileRequestDto _self;
  final $Res Function(EditProfileRequestDto) _then;

/// Create a copy of EditProfileRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? avatarUrl = freezed,Object? birthDate = freezed,Object? country = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? middleName = freezed,Object? phone = freezed,Object? gender = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,
  ));
}

}


/// Adds pattern-matching-related methods to [EditProfileRequestDto].
extension EditProfileRequestDtoPatterns on EditProfileRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditProfileRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditProfileRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditProfileRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _EditProfileRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditProfileRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _EditProfileRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? email,  String? avatarUrl, @DateTimeConverter()  DateTime? birthDate,  String? country,  String? firstName,  String? lastName,  String? middleName,  String? phone,  Gender? gender)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditProfileRequestDto() when $default != null:
return $default(_that.email,_that.avatarUrl,_that.birthDate,_that.country,_that.firstName,_that.lastName,_that.middleName,_that.phone,_that.gender);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? email,  String? avatarUrl, @DateTimeConverter()  DateTime? birthDate,  String? country,  String? firstName,  String? lastName,  String? middleName,  String? phone,  Gender? gender)  $default,) {final _that = this;
switch (_that) {
case _EditProfileRequestDto():
return $default(_that.email,_that.avatarUrl,_that.birthDate,_that.country,_that.firstName,_that.lastName,_that.middleName,_that.phone,_that.gender);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? email,  String? avatarUrl, @DateTimeConverter()  DateTime? birthDate,  String? country,  String? firstName,  String? lastName,  String? middleName,  String? phone,  Gender? gender)?  $default,) {final _that = this;
switch (_that) {
case _EditProfileRequestDto() when $default != null:
return $default(_that.email,_that.avatarUrl,_that.birthDate,_that.country,_that.firstName,_that.lastName,_that.middleName,_that.phone,_that.gender);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EditProfileRequestDto implements EditProfileRequestDto {
  const _EditProfileRequestDto({required this.email, required this.avatarUrl, @DateTimeConverter() required this.birthDate, required this.country, required this.firstName, required this.lastName, required this.middleName, required this.phone, required this.gender});
  factory _EditProfileRequestDto.fromJson(Map<String, dynamic> json) => _$EditProfileRequestDtoFromJson(json);

@override final  String? email;
@override final  String? avatarUrl;
@override@DateTimeConverter() final  DateTime? birthDate;
@override final  String? country;
@override final  String? firstName;
@override final  String? lastName;
@override final  String? middleName;
@override final  String? phone;
@override final  Gender? gender;

/// Create a copy of EditProfileRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditProfileRequestDtoCopyWith<_EditProfileRequestDto> get copyWith => __$EditProfileRequestDtoCopyWithImpl<_EditProfileRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EditProfileRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditProfileRequestDto&&(identical(other.email, email) || other.email == email)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.country, country) || other.country == country)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,avatarUrl,birthDate,country,firstName,lastName,middleName,phone,gender);

@override
String toString() {
  return 'EditProfileRequestDto(email: $email, avatarUrl: $avatarUrl, birthDate: $birthDate, country: $country, firstName: $firstName, lastName: $lastName, middleName: $middleName, phone: $phone, gender: $gender)';
}


}

/// @nodoc
abstract mixin class _$EditProfileRequestDtoCopyWith<$Res> implements $EditProfileRequestDtoCopyWith<$Res> {
  factory _$EditProfileRequestDtoCopyWith(_EditProfileRequestDto value, $Res Function(_EditProfileRequestDto) _then) = __$EditProfileRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String? email, String? avatarUrl,@DateTimeConverter() DateTime? birthDate, String? country, String? firstName, String? lastName, String? middleName, String? phone, Gender? gender
});




}
/// @nodoc
class __$EditProfileRequestDtoCopyWithImpl<$Res>
    implements _$EditProfileRequestDtoCopyWith<$Res> {
  __$EditProfileRequestDtoCopyWithImpl(this._self, this._then);

  final _EditProfileRequestDto _self;
  final $Res Function(_EditProfileRequestDto) _then;

/// Create a copy of EditProfileRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? avatarUrl = freezed,Object? birthDate = freezed,Object? country = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? middleName = freezed,Object? phone = freezed,Object? gender = freezed,}) {
  return _then(_EditProfileRequestDto(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,
  ));
}


}

// dart format on
