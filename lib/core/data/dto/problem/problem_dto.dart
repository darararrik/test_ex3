import 'package:freezed_annotation/freezed_annotation.dart';

part 'problem_dto.freezed.dart';
part 'problem_dto.g.dart';

@freezed
sealed class ProblemDto with _$ProblemDto {
  factory ProblemDto({required String message}) = _ProblemDto;
  factory ProblemDto.fromJson(Map<String, Object?> json) => _$ProblemDtoFromJson(json);
}
