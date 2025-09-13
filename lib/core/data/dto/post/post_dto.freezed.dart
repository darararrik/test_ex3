// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostDto {

 String get id; String get title; String get description; String get mediaUrl; String? get authorId; UserDto get author; bool get isLiked; int get likesCount;@DateTimeConverter() DateTime get createdAt;@DateTimeConverter() DateTime? get updatedAt;@DateTimeConverter() DateTime? get deletedAt;
/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostDtoCopyWith<PostDto> get copyWith => _$PostDtoCopyWithImpl<PostDto>(this as PostDto, _$identity);

  /// Serializes this PostDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.author, author) || other.author == author)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,mediaUrl,authorId,author,isLiked,likesCount,createdAt,updatedAt,deletedAt);

@override
String toString() {
  return 'PostDto(id: $id, title: $title, description: $description, mediaUrl: $mediaUrl, authorId: $authorId, author: $author, isLiked: $isLiked, likesCount: $likesCount, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $PostDtoCopyWith<$Res>  {
  factory $PostDtoCopyWith(PostDto value, $Res Function(PostDto) _then) = _$PostDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, String mediaUrl, String? authorId, UserDto author, bool isLiked, int likesCount,@DateTimeConverter() DateTime createdAt,@DateTimeConverter() DateTime? updatedAt,@DateTimeConverter() DateTime? deletedAt
});


$UserDtoCopyWith<$Res> get author;

}
/// @nodoc
class _$PostDtoCopyWithImpl<$Res>
    implements $PostDtoCopyWith<$Res> {
  _$PostDtoCopyWithImpl(this._self, this._then);

  final PostDto _self;
  final $Res Function(PostDto) _then;

/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? mediaUrl = null,Object? authorId = freezed,Object? author = null,Object? isLiked = null,Object? likesCount = null,Object? createdAt = null,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,mediaUrl: null == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String,authorId: freezed == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String?,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as UserDto,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get author {
  
  return $UserDtoCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostDto].
extension PostDtoPatterns on PostDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostDto value)  $default,){
final _that = this;
switch (_that) {
case _PostDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostDto value)?  $default,){
final _that = this;
switch (_that) {
case _PostDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String mediaUrl,  String? authorId,  UserDto author,  bool isLiked,  int likesCount, @DateTimeConverter()  DateTime createdAt, @DateTimeConverter()  DateTime? updatedAt, @DateTimeConverter()  DateTime? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.mediaUrl,_that.authorId,_that.author,_that.isLiked,_that.likesCount,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  String mediaUrl,  String? authorId,  UserDto author,  bool isLiked,  int likesCount, @DateTimeConverter()  DateTime createdAt, @DateTimeConverter()  DateTime? updatedAt, @DateTimeConverter()  DateTime? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _PostDto():
return $default(_that.id,_that.title,_that.description,_that.mediaUrl,_that.authorId,_that.author,_that.isLiked,_that.likesCount,_that.createdAt,_that.updatedAt,_that.deletedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  String mediaUrl,  String? authorId,  UserDto author,  bool isLiked,  int likesCount, @DateTimeConverter()  DateTime createdAt, @DateTimeConverter()  DateTime? updatedAt, @DateTimeConverter()  DateTime? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _PostDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.mediaUrl,_that.authorId,_that.author,_that.isLiked,_that.likesCount,_that.createdAt,_that.updatedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostDto implements PostDto {
  const _PostDto({required this.id, required this.title, required this.description, required this.mediaUrl, required this.authorId, required this.author, required this.isLiked, required this.likesCount, @DateTimeConverter() required this.createdAt, @DateTimeConverter() this.updatedAt, @DateTimeConverter() this.deletedAt});
  factory _PostDto.fromJson(Map<String, dynamic> json) => _$PostDtoFromJson(json);

@override final  String id;
@override final  String title;
@override final  String description;
@override final  String mediaUrl;
@override final  String? authorId;
@override final  UserDto author;
@override final  bool isLiked;
@override final  int likesCount;
@override@DateTimeConverter() final  DateTime createdAt;
@override@DateTimeConverter() final  DateTime? updatedAt;
@override@DateTimeConverter() final  DateTime? deletedAt;

/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostDtoCopyWith<_PostDto> get copyWith => __$PostDtoCopyWithImpl<_PostDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.authorId, authorId) || other.authorId == authorId)&&(identical(other.author, author) || other.author == author)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,mediaUrl,authorId,author,isLiked,likesCount,createdAt,updatedAt,deletedAt);

@override
String toString() {
  return 'PostDto(id: $id, title: $title, description: $description, mediaUrl: $mediaUrl, authorId: $authorId, author: $author, isLiked: $isLiked, likesCount: $likesCount, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$PostDtoCopyWith<$Res> implements $PostDtoCopyWith<$Res> {
  factory _$PostDtoCopyWith(_PostDto value, $Res Function(_PostDto) _then) = __$PostDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, String mediaUrl, String? authorId, UserDto author, bool isLiked, int likesCount,@DateTimeConverter() DateTime createdAt,@DateTimeConverter() DateTime? updatedAt,@DateTimeConverter() DateTime? deletedAt
});


@override $UserDtoCopyWith<$Res> get author;

}
/// @nodoc
class __$PostDtoCopyWithImpl<$Res>
    implements _$PostDtoCopyWith<$Res> {
  __$PostDtoCopyWithImpl(this._self, this._then);

  final _PostDto _self;
  final $Res Function(_PostDto) _then;

/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? mediaUrl = null,Object? authorId = freezed,Object? author = null,Object? isLiked = null,Object? likesCount = null,Object? createdAt = null,Object? updatedAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_PostDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,mediaUrl: null == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String,authorId: freezed == authorId ? _self.authorId : authorId // ignore: cast_nullable_to_non_nullable
as String?,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as UserDto,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of PostDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDtoCopyWith<$Res> get author {
  
  return $UserDtoCopyWith<$Res>(_self.author, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}

// dart format on
