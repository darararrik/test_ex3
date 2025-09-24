// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'problem_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProblemModel {

 String get message;
/// Create a copy of ProblemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProblemModelCopyWith<ProblemModel> get copyWith => _$ProblemModelCopyWithImpl<ProblemModel>(this as ProblemModel, _$identity);

  /// Serializes this ProblemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProblemModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProblemModel(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProblemModelCopyWith<$Res>  {
  factory $ProblemModelCopyWith(ProblemModel value, $Res Function(ProblemModel) _then) = _$ProblemModelCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProblemModelCopyWithImpl<$Res>
    implements $ProblemModelCopyWith<$Res> {
  _$ProblemModelCopyWithImpl(this._self, this._then);

  final ProblemModel _self;
  final $Res Function(ProblemModel) _then;

/// Create a copy of ProblemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProblemModel].
extension ProblemModelPatterns on ProblemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProblemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProblemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProblemModel value)  $default,){
final _that = this;
switch (_that) {
case _ProblemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProblemModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProblemModel() when $default != null:
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
case _ProblemModel() when $default != null:
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
case _ProblemModel():
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
case _ProblemModel() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProblemModel implements ProblemModel {
   _ProblemModel({required this.message});
  factory _ProblemModel.fromJson(Map<String, dynamic> json) => _$ProblemModelFromJson(json);

@override final  String message;

/// Create a copy of ProblemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProblemModelCopyWith<_ProblemModel> get copyWith => __$ProblemModelCopyWithImpl<_ProblemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProblemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProblemModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProblemModel(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ProblemModelCopyWith<$Res> implements $ProblemModelCopyWith<$Res> {
  factory _$ProblemModelCopyWith(_ProblemModel value, $Res Function(_ProblemModel) _then) = __$ProblemModelCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ProblemModelCopyWithImpl<$Res>
    implements _$ProblemModelCopyWith<$Res> {
  __$ProblemModelCopyWithImpl(this._self, this._then);

  final _ProblemModel _self;
  final $Res Function(_ProblemModel) _then;

/// Create a copy of ProblemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ProblemModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
