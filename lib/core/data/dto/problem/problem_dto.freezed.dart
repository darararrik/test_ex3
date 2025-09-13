// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'problem_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProblemDto {

 String get message;
/// Create a copy of ProblemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProblemDtoCopyWith<ProblemDto> get copyWith => _$ProblemDtoCopyWithImpl<ProblemDto>(this as ProblemDto, _$identity);

  /// Serializes this ProblemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProblemDto&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProblemDto(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProblemDtoCopyWith<$Res>  {
  factory $ProblemDtoCopyWith(ProblemDto value, $Res Function(ProblemDto) _then) = _$ProblemDtoCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProblemDtoCopyWithImpl<$Res>
    implements $ProblemDtoCopyWith<$Res> {
  _$ProblemDtoCopyWithImpl(this._self, this._then);

  final ProblemDto _self;
  final $Res Function(ProblemDto) _then;

/// Create a copy of ProblemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProblemDto].
extension ProblemDtoPatterns on ProblemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProblemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProblemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProblemDto value)  $default,){
final _that = this;
switch (_that) {
case _ProblemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProblemDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProblemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProblemDto() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _ProblemDto():
return $default(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _ProblemDto() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProblemDto implements ProblemDto {
   _ProblemDto({required this.message});
  factory _ProblemDto.fromJson(Map<String, dynamic> json) => _$ProblemDtoFromJson(json);

@override final  String message;

/// Create a copy of ProblemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProblemDtoCopyWith<_ProblemDto> get copyWith => __$ProblemDtoCopyWithImpl<_ProblemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProblemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProblemDto&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProblemDto(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ProblemDtoCopyWith<$Res> implements $ProblemDtoCopyWith<$Res> {
  factory _$ProblemDtoCopyWith(_ProblemDto value, $Res Function(_ProblemDto) _then) = __$ProblemDtoCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ProblemDtoCopyWithImpl<$Res>
    implements _$ProblemDtoCopyWith<$Res> {
  __$ProblemDtoCopyWithImpl(this._self, this._then);

  final _ProblemDto _self;
  final $Res Function(_ProblemDto) _then;

/// Create a copy of ProblemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ProblemDto(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
