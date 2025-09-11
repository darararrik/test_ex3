import 'package:test_3/core/domain/models/user_model.dart';

class PostModel {
  const PostModel({
    required this.id,
    this.authorId,
    this.author,
    this.title,
    this.description,
    this.mediaUrl,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.isLiked,
    this.likesCount,
  });
  final String id;
  final String? authorId;
  final UserModel? author;
  final String? title;
  final String? description;
  final String? mediaUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  final bool? isLiked;
  final double? likesCount;
}
