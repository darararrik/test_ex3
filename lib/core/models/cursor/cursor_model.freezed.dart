// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cursor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CursorModel {

 String? get afterCursor;
/// Create a copy of CursorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CursorModelCopyWith<CursorModel> get copyWith => _$CursorModelCopyWithImpl<CursorModel>(this as CursorModel, _$identity);

  /// Serializes this CursorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CursorModel&&(identical(other.afterCursor, afterCursor) || other.afterCursor == afterCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,afterCursor);

@override
String toString() {
  return 'CursorModel(afterCursor: $afterCursor)';
}


}

/// @nodoc
abstract mixin class $CursorModelCopyWith<$Res>  {
  factory $CursorModelCopyWith(CursorModel value, $Res Function(CursorModel) _then) = _$CursorModelCopyWithImpl;
@useResult
$Res call({
 String? afterCursor
});




}
/// @nodoc
class _$CursorModelCopyWithImpl<$Res>
    implements $CursorModelCopyWith<$Res> {
  _$CursorModelCopyWithImpl(this._self, this._then);

  final CursorModel _self;
  final $Res Function(CursorModel) _then;

/// Create a copy of CursorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? afterCursor = freezed,}) {
  return _then(_self.copyWith(
afterCursor: freezed == afterCursor ? _self.afterCursor : afterCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CursorModel].
extension CursorModelPatterns on CursorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CursorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CursorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CursorModel value)  $default,){
final _that = this;
switch (_that) {
case _CursorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CursorModel value)?  $default,){
final _that = this;
switch (_that) {
case _CursorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? afterCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CursorModel() when $default != null:
return $default(_that.afterCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? afterCursor)  $default,) {final _that = this;
switch (_that) {
case _CursorModel():
return $default(_that.afterCursor);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? afterCursor)?  $default,) {final _that = this;
switch (_that) {
case _CursorModel() when $default != null:
return $default(_that.afterCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CursorModel implements CursorModel {
  const _CursorModel({this.afterCursor});
  factory _CursorModel.fromJson(Map<String, dynamic> json) => _$CursorModelFromJson(json);

@override final  String? afterCursor;

/// Create a copy of CursorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CursorModelCopyWith<_CursorModel> get copyWith => __$CursorModelCopyWithImpl<_CursorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CursorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CursorModel&&(identical(other.afterCursor, afterCursor) || other.afterCursor == afterCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,afterCursor);

@override
String toString() {
  return 'CursorModel(afterCursor: $afterCursor)';
}


}

/// @nodoc
abstract mixin class _$CursorModelCopyWith<$Res> implements $CursorModelCopyWith<$Res> {
  factory _$CursorModelCopyWith(_CursorModel value, $Res Function(_CursorModel) _then) = __$CursorModelCopyWithImpl;
@override @useResult
$Res call({
 String? afterCursor
});




}
/// @nodoc
class __$CursorModelCopyWithImpl<$Res>
    implements _$CursorModelCopyWith<$Res> {
  __$CursorModelCopyWithImpl(this._self, this._then);

  final _CursorModel _self;
  final $Res Function(_CursorModel) _then;

/// Create a copy of CursorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? afterCursor = freezed,}) {
  return _then(_CursorModel(
afterCursor: freezed == afterCursor ? _self.afterCursor : afterCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
