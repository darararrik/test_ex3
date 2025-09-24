import 'package:freezed_annotation/freezed_annotation.dart';

part 'problem_model.freezed.dart';
part 'problem_model.g.dart';

@freezed
sealed class ProblemModel with _$ProblemModel {
  factory ProblemModel({required String message}) = _ProblemModel;
  factory ProblemModel.fromJson(Map<String, Object?> json) => _$ProblemModelFromJson(json);
}
