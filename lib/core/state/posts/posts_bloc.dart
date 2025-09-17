import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_3/core/domain/enums/posts_category.dart';
import 'package:test_3/core/domain/models/post_model.dart';
import 'package:test_3/core/domain/repositories/post_repository.dart';
import 'package:test_3/core/presentation/utils/collections.dart';

part 'posts_bloc.freezed.dart';
part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc(this._postRepository, this.category)
    : super(const PostsState(isLoading: true)) {
    on<_PostsGetPostsEvent>(_onGetPosts);
    on<_PostsLikeEvent>(_onLikePosts);
    on<_PostsUnlikeEvent>(_onUnlikePosts);
    on<_PostsDeleteEvent>(_onDelete);
    on<_PostsCreateEvent>(_onCreate);
  }
  final IPostRepository _postRepository;
  final PostsCategory category;
  FutureOr<void> _onGetPosts(_PostsGetPostsEvent event, Emitter<PostsState> emit) async {
    try {
      final List<PostModel> posts;
      switch (category) {
        case PostsCategory.my:
          posts = await _postRepository.getMyPosts();
          break;
        case PostsCategory.favorites:
          posts = await _postRepository.getFavouritePosts();
          break;
        case PostsCategory.neww:
          posts = await _postRepository.getPosts(catergory: PostsCategory.neww);
          break;
        case PostsCategory.top:
          posts = await _postRepository.getPosts(catergory: PostsCategory.top);
          break;
      }
      emit(state.copyWith(isLoading: false, posts: posts));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  FutureOr<void> _onLikePosts(_PostsLikeEvent event, Emitter<PostsState> emit) async {
    final oldState = state;
    final optimisticPosts = state.posts.map((post) {
      if (post.id == event.id) {
        return post.copyWith(isLiked: true, likesCount: post.likesCount + 1);
      }
      return post;
    }).toList();

    emit(state.copyWith(posts: optimisticPosts));

    try {
      final likedPost = await _postRepository.likePost(event.id);

      final updatedPosts = state.posts.map((post) {
        if (post.id == likedPost.id) {
          return likedPost;
        }
        return post;
      }).toList();

      emit(state.copyWith(posts: updatedPosts));
    } catch (e) {
      emit(oldState);
    }
  }

  FutureOr<void> _onUnlikePosts(_PostsUnlikeEvent event, Emitter<PostsState> emit) async {
    final oldState = state;

    List<PostModel> optimisticPosts;
    if (category == PostsCategory.favorites) {
      optimisticPosts = state.posts.where((post) => post.id != event.id).toList();
    } else {
      optimisticPosts = state.posts.map((post) {
        if (post.id == event.id) {
          return post.copyWith(isLiked: false, likesCount: post.likesCount - 1);
        }
        return post;
      }).toList();
    }

    emit(state.copyWith(posts: optimisticPosts));

    try {
      final unlikedPost = await _postRepository.unlikePost(event.id);

      List<PostModel> updatedPosts;
      if (category == PostsCategory.favorites) {
        updatedPosts = state.posts.where((p) => p.id != unlikedPost.id).toList();
      } else {
        updatedPosts = state.posts.map((p) {
          if (p.id == unlikedPost.id) {
            return unlikedPost;
          }
          return p;
        }).toList();
      }

      emit(state.copyWith(posts: updatedPosts));
    } catch (e) {
      emit(oldState);
    }
  }

  FutureOr<void> _onDelete(_PostsDeleteEvent event, Emitter<PostsState> emit) async {
    try {
      await _postRepository.deletePost(event.id);
      final updatedPosts = state.posts.where((post) => post.id != event.id).toList();
      emit(state.copyWith(posts: updatedPosts));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  FutureOr<void> _onCreate(_PostsCreateEvent event, Emitter<PostsState> emit) async {
    try {
      final createdPost = await _postRepository.createPost(
        title: event.title,
        description: event.description,
        mediaUrl: "",
      );
      final updatedPosts = state.posts.copy()..add(createdPost);
      emit(state.copyWith(posts: updatedPosts));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
