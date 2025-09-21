import 'package:test_3/features/post/domain/models/post_model.dart';

class PostsCursorModel {
  PostsCursorModel({required this.posts, required this.cursor});

  final List<PostModel> posts;
  final String? cursor;
}
