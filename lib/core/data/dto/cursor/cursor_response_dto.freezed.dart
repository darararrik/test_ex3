// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cursor_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CursorResponseDto {

 String? get afterCursor;
/// Create a copy of CursorResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CursorResponseDtoCopyWith<CursorResponseDto> get copyWith => _$CursorResponseDtoCopyWithImpl<CursorResponseDto>(this as CursorResponseDto, _$identity);

  /// Serializes this CursorResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CursorResponseDto&&(identical(other.afterCursor, afterCursor) || other.afterCursor == afterCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,afterCursor);

@override
String toString() {
  return 'CursorResponseDto(afterCursor: $afterCursor)';
}


}

/// @nodoc
abstract mixin class $CursorResponseDtoCopyWith<$Res>  {
  factory $CursorResponseDtoCopyWith(CursorResponseDto value, $Res Function(CursorResponseDto) _then) = _$CursorResponseDtoCopyWithImpl;
@useResult
$Res call({
 String? afterCursor
});




}
/// @nodoc
class _$CursorResponseDtoCopyWithImpl<$Res>
    implements $CursorResponseDtoCopyWith<$Res> {
  _$CursorResponseDtoCopyWithImpl(this._self, this._then);

  final CursorResponseDto _self;
  final $Res Function(CursorResponseDto) _then;

/// Create a copy of CursorResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? afterCursor = freezed,}) {
  return _then(_self.copyWith(
afterCursor: freezed == afterCursor ? _self.afterCursor : afterCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CursorResponseDto].
extension CursorResponseDtoPatterns on CursorResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CursorResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CursorResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CursorResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CursorResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CursorResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CursorResponseDto() when $default != null:
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
case _CursorResponseDto() when $default != null:
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
case _CursorResponseDto():
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
case _CursorResponseDto() when $default != null:
return $default(_that.afterCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CursorResponseDto implements CursorResponseDto {
  const _CursorResponseDto({this.afterCursor});
  factory _CursorResponseDto.fromJson(Map<String, dynamic> json) => _$CursorResponseDtoFromJson(json);

@override final  String? afterCursor;

/// Create a copy of CursorResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CursorResponseDtoCopyWith<_CursorResponseDto> get copyWith => __$CursorResponseDtoCopyWithImpl<_CursorResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CursorResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CursorResponseDto&&(identical(other.afterCursor, afterCursor) || other.afterCursor == afterCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,afterCursor);

@override
String toString() {
  return 'CursorResponseDto(afterCursor: $afterCursor)';
}


}

/// @nodoc
abstract mixin class _$CursorResponseDtoCopyWith<$Res> implements $CursorResponseDtoCopyWith<$Res> {
  factory _$CursorResponseDtoCopyWith(_CursorResponseDto value, $Res Function(_CursorResponseDto) _then) = __$CursorResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String? afterCursor
});




}
/// @nodoc
class __$CursorResponseDtoCopyWithImpl<$Res>
    implements _$CursorResponseDtoCopyWith<$Res> {
  __$CursorResponseDtoCopyWithImpl(this._self, this._then);

  final _CursorResponseDto _self;
  final $Res Function(_CursorResponseDto) _then;

/// Create a copy of CursorResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? afterCursor = freezed,}) {
  return _then(_CursorResponseDto(
afterCursor: freezed == afterCursor ? _self.afterCursor : afterCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
