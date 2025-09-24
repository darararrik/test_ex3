import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursor_model.freezed.dart';
part 'cursor_model.g.dart';

@freezed
sealed class CursorModel with _$CursorModel {
  const factory CursorModel({String? afterCursor}) = _CursorModel;
  factory CursorModel.fromJson(Map<String, dynamic> json) =>
      _$CursorModelFromJson(json);
}
