// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_cursor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostAfterCursor {

@JsonKey(name: "data") List<PostModel> get posts; CursorModel? get pageInfo;
/// Create a copy of PostAfterCursor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostAfterCursorCopyWith<PostAfterCursor> get copyWith => _$PostAfterCursorCopyWithImpl<PostAfterCursor>(this as PostAfterCursor, _$identity);

  /// Serializes this PostAfterCursor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostAfterCursor&&const DeepCollectionEquality().equals(other.posts, posts)&&(identical(other.pageInfo, pageInfo) || other.pageInfo == pageInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(posts),pageInfo);

@override
String toString() {
  return 'PostAfterCursor(posts: $posts, pageInfo: $pageInfo)';
}


}

/// @nodoc
abstract mixin class $PostAfterCursorCopyWith<$Res>  {
  factory $PostAfterCursorCopyWith(PostAfterCursor value, $Res Function(PostAfterCursor) _then) = _$PostAfterCursorCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") List<PostModel> posts, CursorModel? pageInfo
});


$CursorModelCopyWith<$Res>? get pageInfo;

}
/// @nodoc
class _$PostAfterCursorCopyWithImpl<$Res>
    implements $PostAfterCursorCopyWith<$Res> {
  _$PostAfterCursorCopyWithImpl(this._self, this._then);

  final PostAfterCursor _self;
  final $Res Function(PostAfterCursor) _then;

/// Create a copy of PostAfterCursor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = null,Object? pageInfo = freezed,}) {
  return _then(_self.copyWith(
posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostModel>,pageInfo: freezed == pageInfo ? _self.pageInfo : pageInfo // ignore: cast_nullable_to_non_nullable
as CursorModel?,
  ));
}
/// Create a copy of PostAfterCursor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorModelCopyWith<$Res>? get pageInfo {
    if (_self.pageInfo == null) {
    return null;
  }

  return $CursorModelCopyWith<$Res>(_self.pageInfo!, (value) {
    return _then(_self.copyWith(pageInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostAfterCursor].
extension PostAfterCursorPatterns on PostAfterCursor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostAfterCursor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostAfterCursor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostAfterCursor value)  $default,){
final _that = this;
switch (_that) {
case _PostAfterCursor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostAfterCursor value)?  $default,){
final _that = this;
switch (_that) {
case _PostAfterCursor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<PostModel> posts,  CursorModel? pageInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostAfterCursor() when $default != null:
return $default(_that.posts,_that.pageInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<PostModel> posts,  CursorModel? pageInfo)  $default,) {final _that = this;
switch (_that) {
case _PostAfterCursor():
return $default(_that.posts,_that.pageInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  List<PostModel> posts,  CursorModel? pageInfo)?  $default,) {final _that = this;
switch (_that) {
case _PostAfterCursor() when $default != null:
return $default(_that.posts,_that.pageInfo);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostAfterCursor implements PostAfterCursor {
  const _PostAfterCursor({@JsonKey(name: "data") required final  List<PostModel> posts, required this.pageInfo}): _posts = posts;
  factory _PostAfterCursor.fromJson(Map<String, dynamic> json) => _$PostAfterCursorFromJson(json);

 final  List<PostModel> _posts;
@override@JsonKey(name: "data") List<PostModel> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

@override final  CursorModel? pageInfo;

/// Create a copy of PostAfterCursor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostAfterCursorCopyWith<_PostAfterCursor> get copyWith => __$PostAfterCursorCopyWithImpl<_PostAfterCursor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostAfterCursorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostAfterCursor&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.pageInfo, pageInfo) || other.pageInfo == pageInfo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),pageInfo);

@override
String toString() {
  return 'PostAfterCursor(posts: $posts, pageInfo: $pageInfo)';
}


}

/// @nodoc
abstract mixin class _$PostAfterCursorCopyWith<$Res> implements $PostAfterCursorCopyWith<$Res> {
  factory _$PostAfterCursorCopyWith(_PostAfterCursor value, $Res Function(_PostAfterCursor) _then) = __$PostAfterCursorCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") List<PostModel> posts, CursorModel? pageInfo
});


@override $CursorModelCopyWith<$Res>? get pageInfo;

}
/// @nodoc
class __$PostAfterCursorCopyWithImpl<$Res>
    implements _$PostAfterCursorCopyWith<$Res> {
  __$PostAfterCursorCopyWithImpl(this._self, this._then);

  final _PostAfterCursor _self;
  final $Res Function(_PostAfterCursor) _then;

/// Create a copy of PostAfterCursor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? pageInfo = freezed,}) {
  return _then(_PostAfterCursor(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostModel>,pageInfo: freezed == pageInfo ? _self.pageInfo : pageInfo // ignore: cast_nullable_to_non_nullable
as CursorModel?,
  ));
}

/// Create a copy of PostAfterCursor
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorModelCopyWith<$Res>? get pageInfo {
    if (_self.pageInfo == null) {
    return null;
  }

  return $CursorModelCopyWith<$Res>(_self.pageInfo!, (value) {
    return _then(_self.copyWith(pageInfo: value));
  });
}
}

// dart format on
