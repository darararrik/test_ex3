// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditDataEvent {

 DateTime? get bDay; Gender? get gender; XFile? get imageAvatar;
/// Create a copy of EditDataEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditDataEventCopyWith<EditDataEvent> get copyWith => _$EditDataEventCopyWithImpl<EditDataEvent>(this as EditDataEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditDataEvent&&(identical(other.bDay, bDay) || other.bDay == bDay)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.imageAvatar, imageAvatar) || other.imageAvatar == imageAvatar));
}


@override
int get hashCode => Object.hash(runtimeType,bDay,gender,imageAvatar);

@override
String toString() {
  return 'EditDataEvent(bDay: $bDay, gender: $gender, imageAvatar: $imageAvatar)';
}


}

/// @nodoc
abstract mixin class $EditDataEventCopyWith<$Res>  {
  factory $EditDataEventCopyWith(EditDataEvent value, $Res Function(EditDataEvent) _then) = _$EditDataEventCopyWithImpl;
@useResult
$Res call({
 DateTime? bDay, Gender? gender, XFile? imageAvatar
});




}
/// @nodoc
class _$EditDataEventCopyWithImpl<$Res>
    implements $EditDataEventCopyWith<$Res> {
  _$EditDataEventCopyWithImpl(this._self, this._then);

  final EditDataEvent _self;
  final $Res Function(EditDataEvent) _then;

/// Create a copy of EditDataEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bDay = freezed,Object? gender = freezed,Object? imageAvatar = freezed,}) {
  return _then(_self.copyWith(
bDay: freezed == bDay ? _self.bDay : bDay // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,imageAvatar: freezed == imageAvatar ? _self.imageAvatar : imageAvatar // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}

}


/// Adds pattern-matching-related methods to [EditDataEvent].
extension EditDataEventPatterns on EditDataEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EditEvent value)?  edit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditEvent() when edit != null:
return edit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EditEvent value)  edit,}){
final _that = this;
switch (_that) {
case _EditEvent():
return edit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EditEvent value)?  edit,}){
final _that = this;
switch (_that) {
case _EditEvent() when edit != null:
return edit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DateTime? bDay,  Gender? gender,  XFile? imageAvatar)?  edit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditEvent() when edit != null:
return edit(_that.bDay,_that.gender,_that.imageAvatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DateTime? bDay,  Gender? gender,  XFile? imageAvatar)  edit,}) {final _that = this;
switch (_that) {
case _EditEvent():
return edit(_that.bDay,_that.gender,_that.imageAvatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DateTime? bDay,  Gender? gender,  XFile? imageAvatar)?  edit,}) {final _that = this;
switch (_that) {
case _EditEvent() when edit != null:
return edit(_that.bDay,_that.gender,_that.imageAvatar);case _:
  return null;

}
}

}

/// @nodoc


class _EditEvent implements EditDataEvent {
  const _EditEvent({this.bDay, this.gender, this.imageAvatar});
  

@override final  DateTime? bDay;
@override final  Gender? gender;
@override final  XFile? imageAvatar;

/// Create a copy of EditDataEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditEventCopyWith<_EditEvent> get copyWith => __$EditEventCopyWithImpl<_EditEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditEvent&&(identical(other.bDay, bDay) || other.bDay == bDay)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.imageAvatar, imageAvatar) || other.imageAvatar == imageAvatar));
}


@override
int get hashCode => Object.hash(runtimeType,bDay,gender,imageAvatar);

@override
String toString() {
  return 'EditDataEvent.edit(bDay: $bDay, gender: $gender, imageAvatar: $imageAvatar)';
}


}

/// @nodoc
abstract mixin class _$EditEventCopyWith<$Res> implements $EditDataEventCopyWith<$Res> {
  factory _$EditEventCopyWith(_EditEvent value, $Res Function(_EditEvent) _then) = __$EditEventCopyWithImpl;
@override @useResult
$Res call({
 DateTime? bDay, Gender? gender, XFile? imageAvatar
});




}
/// @nodoc
class __$EditEventCopyWithImpl<$Res>
    implements _$EditEventCopyWith<$Res> {
  __$EditEventCopyWithImpl(this._self, this._then);

  final _EditEvent _self;
  final $Res Function(_EditEvent) _then;

/// Create a copy of EditDataEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bDay = freezed,Object? gender = freezed,Object? imageAvatar = freezed,}) {
  return _then(_EditEvent(
bDay: freezed == bDay ? _self.bDay : bDay // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,imageAvatar: freezed == imageAvatar ? _self.imageAvatar : imageAvatar // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}


}

/// @nodoc
mixin _$EditDataState {

 DateTime? get bDay; Gender? get gender; XFile? get imageAvatar;
/// Create a copy of EditDataState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditDataStateCopyWith<EditDataState> get copyWith => _$EditDataStateCopyWithImpl<EditDataState>(this as EditDataState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditDataState&&(identical(other.bDay, bDay) || other.bDay == bDay)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.imageAvatar, imageAvatar) || other.imageAvatar == imageAvatar));
}


@override
int get hashCode => Object.hash(runtimeType,bDay,gender,imageAvatar);

@override
String toString() {
  return 'EditDataState(bDay: $bDay, gender: $gender, imageAvatar: $imageAvatar)';
}


}

/// @nodoc
abstract mixin class $EditDataStateCopyWith<$Res>  {
  factory $EditDataStateCopyWith(EditDataState value, $Res Function(EditDataState) _then) = _$EditDataStateCopyWithImpl;
@useResult
$Res call({
 DateTime? bDay, Gender? gender, XFile? imageAvatar
});




}
/// @nodoc
class _$EditDataStateCopyWithImpl<$Res>
    implements $EditDataStateCopyWith<$Res> {
  _$EditDataStateCopyWithImpl(this._self, this._then);

  final EditDataState _self;
  final $Res Function(EditDataState) _then;

/// Create a copy of EditDataState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bDay = freezed,Object? gender = freezed,Object? imageAvatar = freezed,}) {
  return _then(_self.copyWith(
bDay: freezed == bDay ? _self.bDay : bDay // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,imageAvatar: freezed == imageAvatar ? _self.imageAvatar : imageAvatar // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}

}


/// Adds pattern-matching-related methods to [EditDataState].
extension EditDataStatePatterns on EditDataState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EditDataState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EditDataState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EditDataState value)  $default,){
final _that = this;
switch (_that) {
case _EditDataState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EditDataState value)?  $default,){
final _that = this;
switch (_that) {
case _EditDataState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? bDay,  Gender? gender,  XFile? imageAvatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EditDataState() when $default != null:
return $default(_that.bDay,_that.gender,_that.imageAvatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? bDay,  Gender? gender,  XFile? imageAvatar)  $default,) {final _that = this;
switch (_that) {
case _EditDataState():
return $default(_that.bDay,_that.gender,_that.imageAvatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? bDay,  Gender? gender,  XFile? imageAvatar)?  $default,) {final _that = this;
switch (_that) {
case _EditDataState() when $default != null:
return $default(_that.bDay,_that.gender,_that.imageAvatar);case _:
  return null;

}
}

}

/// @nodoc


class _EditDataState implements EditDataState {
  const _EditDataState({this.bDay = null, this.gender = null, this.imageAvatar = null});
  

@override@JsonKey() final  DateTime? bDay;
@override@JsonKey() final  Gender? gender;
@override@JsonKey() final  XFile? imageAvatar;

/// Create a copy of EditDataState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditDataStateCopyWith<_EditDataState> get copyWith => __$EditDataStateCopyWithImpl<_EditDataState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EditDataState&&(identical(other.bDay, bDay) || other.bDay == bDay)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.imageAvatar, imageAvatar) || other.imageAvatar == imageAvatar));
}


@override
int get hashCode => Object.hash(runtimeType,bDay,gender,imageAvatar);

@override
String toString() {
  return 'EditDataState(bDay: $bDay, gender: $gender, imageAvatar: $imageAvatar)';
}


}

/// @nodoc
abstract mixin class _$EditDataStateCopyWith<$Res> implements $EditDataStateCopyWith<$Res> {
  factory _$EditDataStateCopyWith(_EditDataState value, $Res Function(_EditDataState) _then) = __$EditDataStateCopyWithImpl;
@override @useResult
$Res call({
 DateTime? bDay, Gender? gender, XFile? imageAvatar
});




}
/// @nodoc
class __$EditDataStateCopyWithImpl<$Res>
    implements _$EditDataStateCopyWith<$Res> {
  __$EditDataStateCopyWithImpl(this._self, this._then);

  final _EditDataState _self;
  final $Res Function(_EditDataState) _then;

/// Create a copy of EditDataState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bDay = freezed,Object? gender = freezed,Object? imageAvatar = freezed,}) {
  return _then(_EditDataState(
bDay: freezed == bDay ? _self.bDay : bDay // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,imageAvatar: freezed == imageAvatar ? _self.imageAvatar : imageAvatar // ignore: cast_nullable_to_non_nullable
as XFile?,
  ));
}


}

// dart format on
