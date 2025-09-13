// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostsEvent()';
}


}

/// @nodoc
class $PostsEventCopyWith<$Res>  {
$PostsEventCopyWith(PostsEvent _, $Res Function(PostsEvent) __);
}


/// Adds pattern-matching-related methods to [PostsEvent].
extension PostsEventPatterns on PostsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PostsGetPostsEvent value)?  getPosts,TResult Function( _PostsCreateEvent value)?  create,TResult Function( _PostsLikeEvent value)?  like,TResult Function( _PostsUnlikeEvent value)?  unlike,TResult Function( _PostsDeleteEvent value)?  delete,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostsGetPostsEvent() when getPosts != null:
return getPosts(_that);case _PostsCreateEvent() when create != null:
return create(_that);case _PostsLikeEvent() when like != null:
return like(_that);case _PostsUnlikeEvent() when unlike != null:
return unlike(_that);case _PostsDeleteEvent() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PostsGetPostsEvent value)  getPosts,required TResult Function( _PostsCreateEvent value)  create,required TResult Function( _PostsLikeEvent value)  like,required TResult Function( _PostsUnlikeEvent value)  unlike,required TResult Function( _PostsDeleteEvent value)  delete,}){
final _that = this;
switch (_that) {
case _PostsGetPostsEvent():
return getPosts(_that);case _PostsCreateEvent():
return create(_that);case _PostsLikeEvent():
return like(_that);case _PostsUnlikeEvent():
return unlike(_that);case _PostsDeleteEvent():
return delete(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PostsGetPostsEvent value)?  getPosts,TResult? Function( _PostsCreateEvent value)?  create,TResult? Function( _PostsLikeEvent value)?  like,TResult? Function( _PostsUnlikeEvent value)?  unlike,TResult? Function( _PostsDeleteEvent value)?  delete,}){
final _that = this;
switch (_that) {
case _PostsGetPostsEvent() when getPosts != null:
return getPosts(_that);case _PostsCreateEvent() when create != null:
return create(_that);case _PostsLikeEvent() when like != null:
return like(_that);case _PostsUnlikeEvent() when unlike != null:
return unlike(_that);case _PostsDeleteEvent() when delete != null:
return delete(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PostsCategory category)?  getPosts,TResult Function( String title,  String description)?  create,TResult Function( String id)?  like,TResult Function( String id)?  unlike,TResult Function( String id)?  delete,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostsGetPostsEvent() when getPosts != null:
return getPosts(_that.category);case _PostsCreateEvent() when create != null:
return create(_that.title,_that.description);case _PostsLikeEvent() when like != null:
return like(_that.id);case _PostsUnlikeEvent() when unlike != null:
return unlike(_that.id);case _PostsDeleteEvent() when delete != null:
return delete(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PostsCategory category)  getPosts,required TResult Function( String title,  String description)  create,required TResult Function( String id)  like,required TResult Function( String id)  unlike,required TResult Function( String id)  delete,}) {final _that = this;
switch (_that) {
case _PostsGetPostsEvent():
return getPosts(_that.category);case _PostsCreateEvent():
return create(_that.title,_that.description);case _PostsLikeEvent():
return like(_that.id);case _PostsUnlikeEvent():
return unlike(_that.id);case _PostsDeleteEvent():
return delete(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PostsCategory category)?  getPosts,TResult? Function( String title,  String description)?  create,TResult? Function( String id)?  like,TResult? Function( String id)?  unlike,TResult? Function( String id)?  delete,}) {final _that = this;
switch (_that) {
case _PostsGetPostsEvent() when getPosts != null:
return getPosts(_that.category);case _PostsCreateEvent() when create != null:
return create(_that.title,_that.description);case _PostsLikeEvent() when like != null:
return like(_that.id);case _PostsUnlikeEvent() when unlike != null:
return unlike(_that.id);case _PostsDeleteEvent() when delete != null:
return delete(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _PostsGetPostsEvent implements PostsEvent {
  const _PostsGetPostsEvent({required this.category});
  

 final  PostsCategory category;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostsGetPostsEventCopyWith<_PostsGetPostsEvent> get copyWith => __$PostsGetPostsEventCopyWithImpl<_PostsGetPostsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsGetPostsEvent&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'PostsEvent.getPosts(category: $category)';
}


}

/// @nodoc
abstract mixin class _$PostsGetPostsEventCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$PostsGetPostsEventCopyWith(_PostsGetPostsEvent value, $Res Function(_PostsGetPostsEvent) _then) = __$PostsGetPostsEventCopyWithImpl;
@useResult
$Res call({
 PostsCategory category
});




}
/// @nodoc
class __$PostsGetPostsEventCopyWithImpl<$Res>
    implements _$PostsGetPostsEventCopyWith<$Res> {
  __$PostsGetPostsEventCopyWithImpl(this._self, this._then);

  final _PostsGetPostsEvent _self;
  final $Res Function(_PostsGetPostsEvent) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(_PostsGetPostsEvent(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as PostsCategory,
  ));
}


}

/// @nodoc


class _PostsCreateEvent implements PostsEvent {
  const _PostsCreateEvent({required this.title, required this.description});
  

 final  String title;
 final  String description;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostsCreateEventCopyWith<_PostsCreateEvent> get copyWith => __$PostsCreateEventCopyWithImpl<_PostsCreateEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsCreateEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'PostsEvent.create(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$PostsCreateEventCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$PostsCreateEventCopyWith(_PostsCreateEvent value, $Res Function(_PostsCreateEvent) _then) = __$PostsCreateEventCopyWithImpl;
@useResult
$Res call({
 String title, String description
});




}
/// @nodoc
class __$PostsCreateEventCopyWithImpl<$Res>
    implements _$PostsCreateEventCopyWith<$Res> {
  __$PostsCreateEventCopyWithImpl(this._self, this._then);

  final _PostsCreateEvent _self;
  final $Res Function(_PostsCreateEvent) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,}) {
  return _then(_PostsCreateEvent(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PostsLikeEvent implements PostsEvent {
  const _PostsLikeEvent({required this.id});
  

 final  String id;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostsLikeEventCopyWith<_PostsLikeEvent> get copyWith => __$PostsLikeEventCopyWithImpl<_PostsLikeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsLikeEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PostsEvent.like(id: $id)';
}


}

/// @nodoc
abstract mixin class _$PostsLikeEventCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$PostsLikeEventCopyWith(_PostsLikeEvent value, $Res Function(_PostsLikeEvent) _then) = __$PostsLikeEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$PostsLikeEventCopyWithImpl<$Res>
    implements _$PostsLikeEventCopyWith<$Res> {
  __$PostsLikeEventCopyWithImpl(this._self, this._then);

  final _PostsLikeEvent _self;
  final $Res Function(_PostsLikeEvent) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_PostsLikeEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PostsUnlikeEvent implements PostsEvent {
  const _PostsUnlikeEvent({required this.id});
  

 final  String id;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostsUnlikeEventCopyWith<_PostsUnlikeEvent> get copyWith => __$PostsUnlikeEventCopyWithImpl<_PostsUnlikeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsUnlikeEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PostsEvent.unlike(id: $id)';
}


}

/// @nodoc
abstract mixin class _$PostsUnlikeEventCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$PostsUnlikeEventCopyWith(_PostsUnlikeEvent value, $Res Function(_PostsUnlikeEvent) _then) = __$PostsUnlikeEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$PostsUnlikeEventCopyWithImpl<$Res>
    implements _$PostsUnlikeEventCopyWith<$Res> {
  __$PostsUnlikeEventCopyWithImpl(this._self, this._then);

  final _PostsUnlikeEvent _self;
  final $Res Function(_PostsUnlikeEvent) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_PostsUnlikeEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PostsDeleteEvent implements PostsEvent {
  const _PostsDeleteEvent({required this.id});
  

 final  String id;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostsDeleteEventCopyWith<_PostsDeleteEvent> get copyWith => __$PostsDeleteEventCopyWithImpl<_PostsDeleteEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsDeleteEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PostsEvent.delete(id: $id)';
}


}

/// @nodoc
abstract mixin class _$PostsDeleteEventCopyWith<$Res> implements $PostsEventCopyWith<$Res> {
  factory _$PostsDeleteEventCopyWith(_PostsDeleteEvent value, $Res Function(_PostsDeleteEvent) _then) = __$PostsDeleteEventCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$PostsDeleteEventCopyWithImpl<$Res>
    implements _$PostsDeleteEventCopyWith<$Res> {
  __$PostsDeleteEventCopyWithImpl(this._self, this._then);

  final _PostsDeleteEvent _self;
  final $Res Function(_PostsDeleteEvent) _then;

/// Create a copy of PostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_PostsDeleteEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PostsState {

 bool get isLoading; String? get errorMessage; List<PostModel> get posts;
/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostsStateCopyWith<PostsState> get copyWith => _$PostsStateCopyWithImpl<PostsState>(this as PostsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.posts, posts));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,const DeepCollectionEquality().hash(posts));

@override
String toString() {
  return 'PostsState(isLoading: $isLoading, errorMessage: $errorMessage, posts: $posts)';
}


}

/// @nodoc
abstract mixin class $PostsStateCopyWith<$Res>  {
  factory $PostsStateCopyWith(PostsState value, $Res Function(PostsState) _then) = _$PostsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? errorMessage, List<PostModel> posts
});




}
/// @nodoc
class _$PostsStateCopyWithImpl<$Res>
    implements $PostsStateCopyWith<$Res> {
  _$PostsStateCopyWithImpl(this._self, this._then);

  final PostsState _self;
  final $Res Function(PostsState) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? posts = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PostsState].
extension PostsStatePatterns on PostsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostsState value)  $default,){
final _that = this;
switch (_that) {
case _PostsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostsState value)?  $default,){
final _that = this;
switch (_that) {
case _PostsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  List<PostModel> posts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostsState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.posts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? errorMessage,  List<PostModel> posts)  $default,) {final _that = this;
switch (_that) {
case _PostsState():
return $default(_that.isLoading,_that.errorMessage,_that.posts);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? errorMessage,  List<PostModel> posts)?  $default,) {final _that = this;
switch (_that) {
case _PostsState() when $default != null:
return $default(_that.isLoading,_that.errorMessage,_that.posts);case _:
  return null;

}
}

}

/// @nodoc


class _PostsState implements PostsState {
  const _PostsState({this.isLoading = false, this.errorMessage, final  List<PostModel> posts = const <PostModel>[]}): _posts = posts;
  

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
 final  List<PostModel> _posts;
@override@JsonKey() List<PostModel> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}


/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostsStateCopyWith<_PostsState> get copyWith => __$PostsStateCopyWithImpl<_PostsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._posts, _posts));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,errorMessage,const DeepCollectionEquality().hash(_posts));

@override
String toString() {
  return 'PostsState(isLoading: $isLoading, errorMessage: $errorMessage, posts: $posts)';
}


}

/// @nodoc
abstract mixin class _$PostsStateCopyWith<$Res> implements $PostsStateCopyWith<$Res> {
  factory _$PostsStateCopyWith(_PostsState value, $Res Function(_PostsState) _then) = __$PostsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? errorMessage, List<PostModel> posts
});




}
/// @nodoc
class __$PostsStateCopyWithImpl<$Res>
    implements _$PostsStateCopyWith<$Res> {
  __$PostsStateCopyWithImpl(this._self, this._then);

  final _PostsState _self;
  final $Res Function(_PostsState) _then;

/// Create a copy of PostsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? errorMessage = freezed,Object? posts = null,}) {
  return _then(_PostsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostModel>,
  ));
}


}

// dart format on
