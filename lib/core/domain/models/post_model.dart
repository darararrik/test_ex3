import 'package:test_3/core/domain/models/user_model.dart';

class PostModel {
  const PostModel({
    required this.id,
    required this.authorId,
    required this.author,
    required this.title,
    required this.description,
    required this.mediaUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.isLiked,
    required this.likesCount,
  });
  final String? id;
  final String? authorId;
  final UserModel author;
  final String title;
  final String description;
  final String mediaUrl;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  final bool isLiked;
  final int likesCount;
}
