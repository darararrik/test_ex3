import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_3/core/domain/enums/posts_category.dart';
import 'package:test_3/core/domain/models/post_model.dart';
import 'package:test_3/core/domain/repositories/post_repository.dart';

part 'posts_bloc.freezed.dart';
part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc(this._postRepository) : super(const PostsState(isLoading: true)) {
    on<_PostsGetPostsEvent>(_onGetPosts);
  }
  final IPostRepository _postRepository;

  FutureOr<void> _onGetPosts(_PostsGetPostsEvent event, Emitter<PostsState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final List<PostModel> posts;
      switch (event.category) {
        case PostsCategory.my:
          posts = await _postRepository.getMyPosts();
        case PostsCategory.favorites:
          posts = await _postRepository.getFavouritePosts();
        case PostsCategory.neww:
          posts = await _postRepository.getPosts(catergory: PostsCategory.neww);
        case PostsCategory.top:
          posts = await _postRepository.getPosts(catergory: PostsCategory.top);
      }
      emit(state.copyWith(isLoading: false, posts: posts));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
