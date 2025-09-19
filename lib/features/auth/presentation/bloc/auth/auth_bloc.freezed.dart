// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AuthCheckStatusEvent value)?  checkAuthStatus,TResult Function( _AuthLoginEvent value)?  login,TResult Function( _AuthRegisterEvent value)?  register,TResult Function( _AuthLogoutEvent value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthCheckStatusEvent() when checkAuthStatus != null:
return checkAuthStatus(_that);case _AuthLoginEvent() when login != null:
return login(_that);case _AuthRegisterEvent() when register != null:
return register(_that);case _AuthLogoutEvent() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AuthCheckStatusEvent value)  checkAuthStatus,required TResult Function( _AuthLoginEvent value)  login,required TResult Function( _AuthRegisterEvent value)  register,required TResult Function( _AuthLogoutEvent value)  logout,}){
final _that = this;
switch (_that) {
case _AuthCheckStatusEvent():
return checkAuthStatus(_that);case _AuthLoginEvent():
return login(_that);case _AuthRegisterEvent():
return register(_that);case _AuthLogoutEvent():
return logout(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AuthCheckStatusEvent value)?  checkAuthStatus,TResult? Function( _AuthLoginEvent value)?  login,TResult? Function( _AuthRegisterEvent value)?  register,TResult? Function( _AuthLogoutEvent value)?  logout,}){
final _that = this;
switch (_that) {
case _AuthCheckStatusEvent() when checkAuthStatus != null:
return checkAuthStatus(_that);case _AuthLoginEvent() when login != null:
return login(_that);case _AuthRegisterEvent() when register != null:
return register(_that);case _AuthLogoutEvent() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkAuthStatus,TResult Function( String email,  String password)?  login,TResult Function( String email,  String password,  String passwordConfirm)?  register,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthCheckStatusEvent() when checkAuthStatus != null:
return checkAuthStatus();case _AuthLoginEvent() when login != null:
return login(_that.email,_that.password);case _AuthRegisterEvent() when register != null:
return register(_that.email,_that.password,_that.passwordConfirm);case _AuthLogoutEvent() when logout != null:
return logout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkAuthStatus,required TResult Function( String email,  String password)  login,required TResult Function( String email,  String password,  String passwordConfirm)  register,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case _AuthCheckStatusEvent():
return checkAuthStatus();case _AuthLoginEvent():
return login(_that.email,_that.password);case _AuthRegisterEvent():
return register(_that.email,_that.password,_that.passwordConfirm);case _AuthLogoutEvent():
return logout();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkAuthStatus,TResult? Function( String email,  String password)?  login,TResult? Function( String email,  String password,  String passwordConfirm)?  register,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case _AuthCheckStatusEvent() when checkAuthStatus != null:
return checkAuthStatus();case _AuthLoginEvent() when login != null:
return login(_that.email,_that.password);case _AuthRegisterEvent() when register != null:
return register(_that.email,_that.password,_that.passwordConfirm);case _AuthLogoutEvent() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class _AuthCheckStatusEvent implements AuthEvent {
  const _AuthCheckStatusEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthCheckStatusEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checkAuthStatus()';
}


}




/// @nodoc


class _AuthLoginEvent implements AuthEvent {
  const _AuthLoginEvent({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthLoginEventCopyWith<_AuthLoginEvent> get copyWith => __$AuthLoginEventCopyWithImpl<_AuthLoginEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthLoginEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.login(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$AuthLoginEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$AuthLoginEventCopyWith(_AuthLoginEvent value, $Res Function(_AuthLoginEvent) _then) = __$AuthLoginEventCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$AuthLoginEventCopyWithImpl<$Res>
    implements _$AuthLoginEventCopyWith<$Res> {
  __$AuthLoginEventCopyWithImpl(this._self, this._then);

  final _AuthLoginEvent _self;
  final $Res Function(_AuthLoginEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_AuthLoginEvent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthRegisterEvent implements AuthEvent {
  const _AuthRegisterEvent({required this.email, required this.password, required this.passwordConfirm});
  

 final  String email;
 final  String password;
 final  String passwordConfirm;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthRegisterEventCopyWith<_AuthRegisterEvent> get copyWith => __$AuthRegisterEventCopyWithImpl<_AuthRegisterEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthRegisterEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirm, passwordConfirm) || other.passwordConfirm == passwordConfirm));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,passwordConfirm);

@override
String toString() {
  return 'AuthEvent.register(email: $email, password: $password, passwordConfirm: $passwordConfirm)';
}


}

/// @nodoc
abstract mixin class _$AuthRegisterEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$AuthRegisterEventCopyWith(_AuthRegisterEvent value, $Res Function(_AuthRegisterEvent) _then) = __$AuthRegisterEventCopyWithImpl;
@useResult
$Res call({
 String email, String password, String passwordConfirm
});




}
/// @nodoc
class __$AuthRegisterEventCopyWithImpl<$Res>
    implements _$AuthRegisterEventCopyWith<$Res> {
  __$AuthRegisterEventCopyWithImpl(this._self, this._then);

  final _AuthRegisterEvent _self;
  final $Res Function(_AuthRegisterEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? passwordConfirm = null,}) {
  return _then(_AuthRegisterEvent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirm: null == passwordConfirm ? _self.passwordConfirm : passwordConfirm // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _AuthLogoutEvent implements AuthEvent {
  const _AuthLogoutEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthLogoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




/// @nodoc
mixin _$AuthState {

 bool get isAuthorized; bool get isLoading; UserModel get user; String? get errorMessage;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.isAuthorized, isAuthorized) || other.isAuthorized == isAuthorized)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.user, user) || other.user == user)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isAuthorized,isLoading,user,errorMessage);

@override
String toString() {
  return 'AuthState(isAuthorized: $isAuthorized, isLoading: $isLoading, user: $user, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 bool isAuthorized, bool isLoading, UserModel user, String? errorMessage
});




}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isAuthorized = null,Object? isLoading = null,Object? user = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isAuthorized: null == isAuthorized ? _self.isAuthorized : isAuthorized // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isAuthorized,  bool isLoading,  UserModel user,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isAuthorized,_that.isLoading,_that.user,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isAuthorized,  bool isLoading,  UserModel user,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.isAuthorized,_that.isLoading,_that.user,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isAuthorized,  bool isLoading,  UserModel user,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.isAuthorized,_that.isLoading,_that.user,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.isAuthorized = false, this.isLoading = false, this.user = const UserModel(), this.errorMessage});
  

@override@JsonKey() final  bool isAuthorized;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  UserModel user;
@override final  String? errorMessage;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.isAuthorized, isAuthorized) || other.isAuthorized == isAuthorized)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.user, user) || other.user == user)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isAuthorized,isLoading,user,errorMessage);

@override
String toString() {
  return 'AuthState(isAuthorized: $isAuthorized, isLoading: $isLoading, user: $user, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 bool isAuthorized, bool isLoading, UserModel user, String? errorMessage
});




}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isAuthorized = null,Object? isLoading = null,Object? user = null,Object? errorMessage = freezed,}) {
  return _then(_AuthState(
isAuthorized: null == isAuthorized ? _self.isAuthorized : isAuthorized // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
