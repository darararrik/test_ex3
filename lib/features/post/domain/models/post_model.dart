import 'package:test_3/features/auth/domain/models/user_model.dart';

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
  final String id;
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
  PostModel copyWith({
    String? id,
    String? authorId,
    UserModel? author,
    String? title,
    String? description,
    String? mediaUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
    bool? isLiked,
    int? likesCount,
  }) => PostModel(
    id: id ?? this.id,
    authorId: authorId ?? this.authorId,
    author: author ?? this.author,
    title: title ?? this.title,
    description: description ?? this.description,
    mediaUrl: mediaUrl ?? this.mediaUrl,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    deletedAt: deletedAt ?? this.deletedAt,
    isLiked: isLiked ?? this.isLiked,
    likesCount: likesCount ?? this.likesCount,
  );
}
