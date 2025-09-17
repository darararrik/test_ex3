// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDto {

 String? get id; String get email; String get firstName; String get lastName; String get avatarUrl; String? get phone;@DateTimeConverter() DateTime? get birthDate; String? get country;@GenderConverter() Gender? get gender;@DateTimeConverter() DateTime? get createdAt;@DateTimeConverter() DateTime? get updatedAt;@DateTimeConverter() DateTime? get deletedAt; String? get middleName;
/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDtoCopyWith<UserDto> get copyWith => _$UserDtoCopyWithImpl<UserDto>(this as UserDto, _$identity);

  /// Serializes this UserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.country, country) || other.country == country)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.middleName, middleName) || other.middleName == middleName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,firstName,lastName,avatarUrl,phone,birthDate,country,gender,createdAt,updatedAt,deletedAt,middleName);

@override
String toString() {
  return 'UserDto(id: $id, email: $email, firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, phone: $phone, birthDate: $birthDate, country: $country, gender: $gender, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, middleName: $middleName)';
}


}

/// @nodoc
abstract mixin class $UserDtoCopyWith<$Res>  {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) _then) = _$UserDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String email, String firstName, String lastName, String avatarUrl, String? phone,@DateTimeConverter() DateTime? birthDate, String? country,@GenderConverter() Gender? gender,@DateTimeConverter() DateTime? createdAt,@DateTimeConverter() DateTime? updatedAt,@DateTimeConverter() DateTime? deletedAt, String? middleName
});




}
/// @nodoc
class _$UserDtoCopyWithImpl<$Res>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._self, this._then);

  final UserDto _self;
  final $Res Function(UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? email = null,Object? firstName = null,Object? lastName = null,Object? avatarUrl = null,Object? phone = freezed,Object? birthDate = freezed,Object? country = freezed,Object? gender = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,Object? middleName = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDto].
extension UserDtoPatterns on UserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDto value)  $default,){
final _that = this;
switch (_that) {
case _UserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDto value)?  $default,){
final _that = this;
switch (_that) {
case _UserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String email,  String firstName,  String lastName,  String avatarUrl,  String? phone, @DateTimeConverter()  DateTime? birthDate,  String? country, @GenderConverter()  Gender? gender, @DateTimeConverter()  DateTime? createdAt, @DateTimeConverter()  DateTime? updatedAt, @DateTimeConverter()  DateTime? deletedAt,  String? middleName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.avatarUrl,_that.phone,_that.birthDate,_that.country,_that.gender,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.middleName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String email,  String firstName,  String lastName,  String avatarUrl,  String? phone, @DateTimeConverter()  DateTime? birthDate,  String? country, @GenderConverter()  Gender? gender, @DateTimeConverter()  DateTime? createdAt, @DateTimeConverter()  DateTime? updatedAt, @DateTimeConverter()  DateTime? deletedAt,  String? middleName)  $default,) {final _that = this;
switch (_that) {
case _UserDto():
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.avatarUrl,_that.phone,_that.birthDate,_that.country,_that.gender,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.middleName);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String email,  String firstName,  String lastName,  String avatarUrl,  String? phone, @DateTimeConverter()  DateTime? birthDate,  String? country, @GenderConverter()  Gender? gender, @DateTimeConverter()  DateTime? createdAt, @DateTimeConverter()  DateTime? updatedAt, @DateTimeConverter()  DateTime? deletedAt,  String? middleName)?  $default,) {final _that = this;
switch (_that) {
case _UserDto() when $default != null:
return $default(_that.id,_that.email,_that.firstName,_that.lastName,_that.avatarUrl,_that.phone,_that.birthDate,_that.country,_that.gender,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.middleName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDto implements UserDto {
  const _UserDto({this.id, required this.email, required this.firstName, required this.lastName, required this.avatarUrl, this.phone, @DateTimeConverter() this.birthDate, this.country, @GenderConverter() this.gender, @DateTimeConverter() this.createdAt, @DateTimeConverter() this.updatedAt, @DateTimeConverter() this.deletedAt, this.middleName});
  factory _UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

@override final  String? id;
@override final  String email;
@override final  String firstName;
@override final  String lastName;
@override final  String avatarUrl;
@override final  String? phone;
@override@DateTimeConverter() final  DateTime? birthDate;
@override final  String? country;
@override@GenderConverter() final  Gender? gender;
@override@DateTimeConverter() final  DateTime? createdAt;
@override@DateTimeConverter() final  DateTime? updatedAt;
@override@DateTimeConverter() final  DateTime? deletedAt;
@override final  String? middleName;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDtoCopyWith<_UserDto> get copyWith => __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.country, country) || other.country == country)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.middleName, middleName) || other.middleName == middleName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,firstName,lastName,avatarUrl,phone,birthDate,country,gender,createdAt,updatedAt,deletedAt,middleName);

@override
String toString() {
  return 'UserDto(id: $id, email: $email, firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, phone: $phone, birthDate: $birthDate, country: $country, gender: $gender, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, middleName: $middleName)';
}


}

/// @nodoc
abstract mixin class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) _then) = __$UserDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String email, String firstName, String lastName, String avatarUrl, String? phone,@DateTimeConverter() DateTime? birthDate, String? country,@GenderConverter() Gender? gender,@DateTimeConverter() DateTime? createdAt,@DateTimeConverter() DateTime? updatedAt,@DateTimeConverter() DateTime? deletedAt, String? middleName
});




}
/// @nodoc
class __$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(this._self, this._then);

  final _UserDto _self;
  final $Res Function(_UserDto) _then;

/// Create a copy of UserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? email = null,Object? firstName = null,Object? lastName = null,Object? avatarUrl = null,Object? phone = freezed,Object? birthDate = freezed,Object? country = freezed,Object? gender = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,Object? middleName = freezed,}) {
  return _then(_UserDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,middleName: freezed == middleName ? _self.middleName : middleName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
