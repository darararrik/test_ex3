// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatePostRequestDto {

 String get title; String get mediaUrl; String get description;
/// Create a copy of CreatePostRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostRequestDtoCopyWith<CreatePostRequestDto> get copyWith => _$CreatePostRequestDtoCopyWithImpl<CreatePostRequestDto>(this as CreatePostRequestDto, _$identity);

  /// Serializes this CreatePostRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePostRequestDto&&(identical(other.title, title) || other.title == title)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,mediaUrl,description);

@override
String toString() {
  return 'CreatePostRequestDto(title: $title, mediaUrl: $mediaUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class $CreatePostRequestDtoCopyWith<$Res>  {
  factory $CreatePostRequestDtoCopyWith(CreatePostRequestDto value, $Res Function(CreatePostRequestDto) _then) = _$CreatePostRequestDtoCopyWithImpl;
@useResult
$Res call({
 String title, String mediaUrl, String description
});




}
/// @nodoc
class _$CreatePostRequestDtoCopyWithImpl<$Res>
    implements $CreatePostRequestDtoCopyWith<$Res> {
  _$CreatePostRequestDtoCopyWithImpl(this._self, this._then);

  final CreatePostRequestDto _self;
  final $Res Function(CreatePostRequestDto) _then;

/// Create a copy of CreatePostRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? mediaUrl = null,Object? description = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,mediaUrl: null == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatePostRequestDto].
extension CreatePostRequestDtoPatterns on CreatePostRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatePostRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatePostRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatePostRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreatePostRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatePostRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreatePostRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String mediaUrl,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatePostRequestDto() when $default != null:
return $default(_that.title,_that.mediaUrl,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String mediaUrl,  String description)  $default,) {final _that = this;
switch (_that) {
case _CreatePostRequestDto():
return $default(_that.title,_that.mediaUrl,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String mediaUrl,  String description)?  $default,) {final _that = this;
switch (_that) {
case _CreatePostRequestDto() when $default != null:
return $default(_that.title,_that.mediaUrl,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatePostRequestDto implements CreatePostRequestDto {
  const _CreatePostRequestDto({required this.title, required this.mediaUrl, required this.description});
  factory _CreatePostRequestDto.fromJson(Map<String, dynamic> json) => _$CreatePostRequestDtoFromJson(json);

@override final  String title;
@override final  String mediaUrl;
@override final  String description;

/// Create a copy of CreatePostRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePostRequestDtoCopyWith<_CreatePostRequestDto> get copyWith => __$CreatePostRequestDtoCopyWithImpl<_CreatePostRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatePostRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePostRequestDto&&(identical(other.title, title) || other.title == title)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,mediaUrl,description);

@override
String toString() {
  return 'CreatePostRequestDto(title: $title, mediaUrl: $mediaUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CreatePostRequestDtoCopyWith<$Res> implements $CreatePostRequestDtoCopyWith<$Res> {
  factory _$CreatePostRequestDtoCopyWith(_CreatePostRequestDto value, $Res Function(_CreatePostRequestDto) _then) = __$CreatePostRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String title, String mediaUrl, String description
});




}
/// @nodoc
class __$CreatePostRequestDtoCopyWithImpl<$Res>
    implements _$CreatePostRequestDtoCopyWith<$Res> {
  __$CreatePostRequestDtoCopyWithImpl(this._self, this._then);

  final _CreatePostRequestDto _self;
  final $Res Function(_CreatePostRequestDto) _then;

/// Create a copy of CreatePostRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? mediaUrl = null,Object? description = null,}) {
  return _then(_CreatePostRequestDto(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,mediaUrl: null == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
