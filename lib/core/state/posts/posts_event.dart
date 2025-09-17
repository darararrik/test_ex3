part of 'posts_bloc.dart';

@freezed
sealed class PostsEvent with _$PostsEvent {
  const factory PostsEvent.getPosts() = _PostsGetPostsEvent;
  const factory PostsEvent.create({required String title, required String description}) =
      _PostsCreateEvent;

  const factory PostsEvent.like({required String id}) = _PostsLikeEvent;
  const factory PostsEvent.unlike({required String id}) = _PostsUnlikeEvent;
  const factory PostsEvent.delete({required String id}) = _PostsDeleteEvent;
}
