// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_cursor_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostCursorDto {

 List<PostDto> get data; CursorResponseDto? get pageInfo;
/// Create a copy of PostCursorDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCursorDtoCopyWith<PostCursorDto> get copyWith => _$PostCursorDtoCopyWithImpl<PostCursorDto>(this as PostCursorDto, _$identity);

  /// Serializes this PostCursorDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostCursorDto&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pageInfo, pageInfo) || other.pageInfo == pageInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),pageInfo);

@override
String toString() {
  return 'PostCursorDto(data: $data, pageInfo: $pageInfo)';
}


}

/// @nodoc
abstract mixin class $PostCursorDtoCopyWith<$Res>  {
  factory $PostCursorDtoCopyWith(PostCursorDto value, $Res Function(PostCursorDto) _then) = _$PostCursorDtoCopyWithImpl;
@useResult
$Res call({
 List<PostDto> data, CursorResponseDto? pageInfo
});


$CursorResponseDtoCopyWith<$Res>? get pageInfo;

}
/// @nodoc
class _$PostCursorDtoCopyWithImpl<$Res>
    implements $PostCursorDtoCopyWith<$Res> {
  _$PostCursorDtoCopyWithImpl(this._self, this._then);

  final PostCursorDto _self;
  final $Res Function(PostCursorDto) _then;

/// Create a copy of PostCursorDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? pageInfo = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PostDto>,pageInfo: freezed == pageInfo ? _self.pageInfo : pageInfo // ignore: cast_nullable_to_non_nullable
as CursorResponseDto?,
  ));
}
/// Create a copy of PostCursorDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorResponseDtoCopyWith<$Res>? get pageInfo {
    if (_self.pageInfo == null) {
    return null;
  }

  return $CursorResponseDtoCopyWith<$Res>(_self.pageInfo!, (value) {
    return _then(_self.copyWith(pageInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostCursorDto].
extension PostCursorDtoPatterns on PostCursorDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostCursorDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostCursorDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostCursorDto value)  $default,){
final _that = this;
switch (_that) {
case _PostCursorDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostCursorDto value)?  $default,){
final _that = this;
switch (_that) {
case _PostCursorDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PostDto> data,  CursorResponseDto? pageInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostCursorDto() when $default != null:
return $default(_that.data,_that.pageInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PostDto> data,  CursorResponseDto? pageInfo)  $default,) {final _that = this;
switch (_that) {
case _PostCursorDto():
return $default(_that.data,_that.pageInfo);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PostDto> data,  CursorResponseDto? pageInfo)?  $default,) {final _that = this;
switch (_that) {
case _PostCursorDto() when $default != null:
return $default(_that.data,_that.pageInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostCursorDto implements PostCursorDto {
  const _PostCursorDto({required final  List<PostDto> data, required this.pageInfo}): _data = data;
  factory _PostCursorDto.fromJson(Map<String, dynamic> json) => _$PostCursorDtoFromJson(json);

 final  List<PostDto> _data;
@override List<PostDto> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  CursorResponseDto? pageInfo;

/// Create a copy of PostCursorDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostCursorDtoCopyWith<_PostCursorDto> get copyWith => __$PostCursorDtoCopyWithImpl<_PostCursorDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostCursorDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostCursorDto&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pageInfo, pageInfo) || other.pageInfo == pageInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),pageInfo);

@override
String toString() {
  return 'PostCursorDto(data: $data, pageInfo: $pageInfo)';
}


}

/// @nodoc
abstract mixin class _$PostCursorDtoCopyWith<$Res> implements $PostCursorDtoCopyWith<$Res> {
  factory _$PostCursorDtoCopyWith(_PostCursorDto value, $Res Function(_PostCursorDto) _then) = __$PostCursorDtoCopyWithImpl;
@override @useResult
$Res call({
 List<PostDto> data, CursorResponseDto? pageInfo
});


@override $CursorResponseDtoCopyWith<$Res>? get pageInfo;

}
/// @nodoc
class __$PostCursorDtoCopyWithImpl<$Res>
    implements _$PostCursorDtoCopyWith<$Res> {
  __$PostCursorDtoCopyWithImpl(this._self, this._then);

  final _PostCursorDto _self;
  final $Res Function(_PostCursorDto) _then;

/// Create a copy of PostCursorDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? pageInfo = freezed,}) {
  return _then(_PostCursorDto(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PostDto>,pageInfo: freezed == pageInfo ? _self.pageInfo : pageInfo // ignore: cast_nullable_to_non_nullable
as CursorResponseDto?,
  ));
}

/// Create a copy of PostCursorDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorResponseDtoCopyWith<$Res>? get pageInfo {
    if (_self.pageInfo == null) {
    return null;
  }

  return $CursorResponseDtoCopyWith<$Res>(_self.pageInfo!, (value) {
    return _then(_self.copyWith(pageInfo: value));
  });
}
}

// dart format on
