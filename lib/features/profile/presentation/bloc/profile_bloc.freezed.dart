// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetProfileEvent value)?  getProfile,TResult Function( _ChangeProfileEvent value)?  changeProfile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetProfileEvent() when getProfile != null:
return getProfile(_that);case _ChangeProfileEvent() when changeProfile != null:
return changeProfile(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetProfileEvent value)  getProfile,required TResult Function( _ChangeProfileEvent value)  changeProfile,}){
final _that = this;
switch (_that) {
case _GetProfileEvent():
return getProfile(_that);case _ChangeProfileEvent():
return changeProfile(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetProfileEvent value)?  getProfile,TResult? Function( _ChangeProfileEvent value)?  changeProfile,}){
final _that = this;
switch (_that) {
case _GetProfileEvent() when getProfile != null:
return getProfile(_that);case _ChangeProfileEvent() when changeProfile != null:
return changeProfile(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getProfile,TResult Function( String email,  XFile? imageAvatar,  DateTime? birthDate,  String? country,  String? firstName,  String? lastName,  String? middleName,  String? phone,  Gender? gender)?  changeProfile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetProfileEvent() when getProfile != null:
return getProfile();case _ChangeProfileEvent() when changeProfile != null:
return changeProfile(_that.email,_that.imageAvatar,_that.birthDate,_that.country,_that.firstName,_that.lastName,_that.middleName,_that.phone,_that.gender);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getProfile,required TResult Function( String email,  XFile? imageAvatar,  DateTime? birthDate,  String? country,  String? firstName,  String? lastName,  String? middleName,  String? phone,  Gender? gender)  changeProfile,}) {final _that = this;
switch (_that) {
case _GetProfileEvent():
return getProfile();case _ChangeProfileEvent():
return changeProfile(_that.email,_that.imageAvatar,_that.birthDate,_that.country,_that.firstName,_that.lastName,_that.middleName,_that.phone,_that.gender);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getProfile,TResult? Function( String email,  XFile? imageAvatar,  DateTime? birthDate,  String? country,  String? firstName,  String? lastName,  String? middleName,  String? phone,  Gender? gender)?  changeProfile,}) {final _that = this;
switch (_that) {
case _GetProfileEvent() when getProfile != null:
return getProfile();case _ChangeProfileEvent() when changeProfile != null:
return changeProfile(_that.email,_that.imageAvatar,_that.birthDate,_that.country,_that.firstName,_that.lastName,_that.middleName,_that.phone,_that.gender);case _:
  return null;

}
}

}

/// @nodoc


class _GetProfileEvent with DiagnosticableTreeMixin implements ProfileEvent {
  const _GetProfileEvent();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileEvent.getProfile'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileEvent.getProfile()';
}


}




/// @nodoc


class _ChangeProfileEvent with DiagnosticableTreeMixin implements ProfileEvent {
  const _ChangeProfileEvent({required this.email, required this.imageAvatar, required this.birthDate, required this.country, required this.firstName, required this.lastName, required this.middleName, required this.phone, required this.gender});
  

 final  String email;
 final  XFile? imageAvatar;
 final  DateTime? birthDate;
 final  String? country;
 final  String? firstName;
 final  String? lastName;
 final  String? middleName;
 final  String? phone;
 final  Gender? gender;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeProfileEventCopyWith<_ChangeProfileEvent> get copyWith => __$ChangeProfileEventCopyWithImpl<_ChangeProfileEvent>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileEvent.changeProfile'))
    ..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('imageAvatar', imageAvatar))..add(DiagnosticsProperty('birthDate', birthDate))..add(DiagnosticsProperty('country', country))..add(DiagnosticsProperty('firstName', firstName))..add(DiagnosticsProperty('lastName', lastName))..add(DiagnosticsProperty('middleName', middleName))..add(DiagnosticsProperty('phone', phone))..add(DiagnosticsProperty('gender', gender));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangeProfileEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.imageAvatar, imageAvatar) || other.imageAvatar == imageAvatar)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.country, country) || other.country == country)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.middleName, middleName) || other.middleName == middleName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.gender, gender) || other.gender == gender));
}


@override
int get hashCode => Object.hash(runtimeType,email,imageAvatar,birthDate,country,firstName,lastName,middleName,phone,gender);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileEvent.changeProfile(email: $email, imageAvatar: $imageAvatar, birthDate: $birthDate, country: $country, firstName: $firstName, lastName: $lastName, middleName: $middleName, phone: $phone, gender: $gender)';
}


}

/// @nodoc
abstract mixin class _$ChangeProfileEventCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$ChangeProfileEventCopyWith(_ChangeProfileEvent value, $Res Function(_ChangeProfileEvent) _then) = __$ChangeProfileEventCopyWithImpl;
@useResult
$Res call({
 String email, XFile? imageAvatar, DateTime? birthDate, String? country, String? firstName, String? lastName, String? middleName, String? phone, Gender? gender
});




}
/// @nodoc
class __$ChangeProfileEventCopyWithImpl<$Res>
    implements _$ChangeProfileEventCopyWith<$Res> {
  __$ChangeProfileEventCopyWithImpl(this._self, this._then);

  final _ChangeProfileEvent _self;
  final $Res Function(_ChangeProfileEvent) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? imageAvatar = freezed,Object? birthDate = freezed,Object? country = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? middleName = freezed,Object? phone = freezed,Object? gender = freezed,}) {
  return _then(_ChangeProfileEvent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,imageAvatar: freezed == imageAvatar ? _self.imageAvatar : imageAvatar // ignore: cast_nullable_to_non_nullable
as XFile?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
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

/// @nodoc
mixin _$ProfileState implements DiagnosticableTreeMixin {

 bool get isLoading; String? get errorMessage; UserModel get profile;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileState'))
    ..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('profile', profile));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,profile);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileState(isLoading: $isLoading, errorMessage: $errorMessage, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? errorMessage, UserModel profile
});




}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? profile = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  UserModel profile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  UserModel profile)  $default,) {final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that.isLoading,_that.errorMessage,_that.profile);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? errorMessage,  UserModel profile)?  $default,) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.profile);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileState with DiagnosticableTreeMixin implements ProfileState {
  const _ProfileState({this.isLoading = true, this.errorMessage, this.profile = const UserModel()});
  

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override@JsonKey() final  UserModel profile;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ProfileState'))
    ..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('profile', profile));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,profile);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ProfileState(isLoading: $isLoading, errorMessage: $errorMessage, profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? errorMessage, UserModel profile
});




}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? profile = null,}) {
  return _then(_ProfileState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}


}

// dart format on
