import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_login_tuterual/features/posts/data/datasources/remote/post_remote_data_source.dart';

part 'post_event.dart';
part 'post_state.dart';
part '../../../../feature_post/presentation/bloc/post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRemoteDataSource remoteDataSource;

  PostBloc(this.remoteDataSource) : super(const PostState.initial()) {
    on<_FetchPosts>((event, emit) async {
      emit(const PostState.loading());
      try {
        final posts = await remoteDataSource.getPosts();
        emit(PostState.loaded(posts));
      } catch (e) {
        emit(PostState.error(e.toString()));
      }
    });
  }
}
