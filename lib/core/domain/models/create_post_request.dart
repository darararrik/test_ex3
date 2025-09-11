class CreatePostRequest {
  CreatePostRequest({
    required this.title,
    required this.mediaUrl,
    required this.description,
  });

  final String title;
  final String mediaUrl;
  final String description;
}
