import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_3/core/data/utils/date_time_converter.dart';
import 'package:test_3/features/profile/domain/models/user/user_model.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
sealed class PostModel with _$PostModel {
  const factory PostModel({
    required String id,
    required String title,
    required String description,
    required String mediaUrl,
    required String? authorId,
    required UserModel author,
    required bool isLiked,
    required int likesCount,
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() DateTime? updatedAt,
    @DateTimeConverter() DateTime? deletedAt,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
}
