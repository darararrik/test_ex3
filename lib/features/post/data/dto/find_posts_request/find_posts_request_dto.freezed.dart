// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_posts_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FindPostsRequestDto {

 String? get afterCursor; int get limit; PostFilterType get type;
/// Create a copy of FindPostsRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindPostsRequestDtoCopyWith<FindPostsRequestDto> get copyWith => _$FindPostsRequestDtoCopyWithImpl<FindPostsRequestDto>(this as FindPostsRequestDto, _$identity);

  /// Serializes this FindPostsRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindPostsRequestDto&&(identical(other.afterCursor, afterCursor) || other.afterCursor == afterCursor)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,afterCursor,limit,type);

@override
String toString() {
  return 'FindPostsRequestDto(afterCursor: $afterCursor, limit: $limit, type: $type)';
}


}

/// @nodoc
abstract mixin class $FindPostsRequestDtoCopyWith<$Res>  {
  factory $FindPostsRequestDtoCopyWith(FindPostsRequestDto value, $Res Function(FindPostsRequestDto) _then) = _$FindPostsRequestDtoCopyWithImpl;
@useResult
$Res call({
 String? afterCursor, int limit, PostFilterType type
});




}
/// @nodoc
class _$FindPostsRequestDtoCopyWithImpl<$Res>
    implements $FindPostsRequestDtoCopyWith<$Res> {
  _$FindPostsRequestDtoCopyWithImpl(this._self, this._then);

  final FindPostsRequestDto _self;
  final $Res Function(FindPostsRequestDto) _then;

/// Create a copy of FindPostsRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? afterCursor = freezed,Object? limit = null,Object? type = null,}) {
  return _then(_self.copyWith(
afterCursor: freezed == afterCursor ? _self.afterCursor : afterCursor // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PostFilterType,
  ));
}

}


/// Adds pattern-matching-related methods to [FindPostsRequestDto].
extension FindPostsRequestDtoPatterns on FindPostsRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FindPostsRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FindPostsRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FindPostsRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _FindPostsRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FindPostsRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _FindPostsRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? afterCursor,  int limit,  PostFilterType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FindPostsRequestDto() when $default != null:
return $default(_that.afterCursor,_that.limit,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? afterCursor,  int limit,  PostFilterType type)  $default,) {final _that = this;
switch (_that) {
case _FindPostsRequestDto():
return $default(_that.afterCursor,_that.limit,_that.type);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? afterCursor,  int limit,  PostFilterType type)?  $default,) {final _that = this;
switch (_that) {
case _FindPostsRequestDto() when $default != null:
return $default(_that.afterCursor,_that.limit,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FindPostsRequestDto implements FindPostsRequestDto {
  const _FindPostsRequestDto({this.afterCursor, this.limit = 10, required this.type});
  factory _FindPostsRequestDto.fromJson(Map<String, dynamic> json) => _$FindPostsRequestDtoFromJson(json);

@override final  String? afterCursor;
@override@JsonKey() final  int limit;
@override final  PostFilterType type;

/// Create a copy of FindPostsRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindPostsRequestDtoCopyWith<_FindPostsRequestDto> get copyWith => __$FindPostsRequestDtoCopyWithImpl<_FindPostsRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FindPostsRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FindPostsRequestDto&&(identical(other.afterCursor, afterCursor) || other.afterCursor == afterCursor)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,afterCursor,limit,type);

@override
String toString() {
  return 'FindPostsRequestDto(afterCursor: $afterCursor, limit: $limit, type: $type)';
}


}

/// @nodoc
abstract mixin class _$FindPostsRequestDtoCopyWith<$Res> implements $FindPostsRequestDtoCopyWith<$Res> {
  factory _$FindPostsRequestDtoCopyWith(_FindPostsRequestDto value, $Res Function(_FindPostsRequestDto) _then) = __$FindPostsRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String? afterCursor, int limit, PostFilterType type
});




}
/// @nodoc
class __$FindPostsRequestDtoCopyWithImpl<$Res>
    implements _$FindPostsRequestDtoCopyWith<$Res> {
  __$FindPostsRequestDtoCopyWithImpl(this._self, this._then);

  final _FindPostsRequestDto _self;
  final $Res Function(_FindPostsRequestDto) _then;

/// Create a copy of FindPostsRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? afterCursor = freezed,Object? limit = null,Object? type = null,}) {
  return _then(_FindPostsRequestDto(
afterCursor: freezed == afterCursor ? _self.afterCursor : afterCursor // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as PostFilterType,
  ));
}


}

// dart format on
