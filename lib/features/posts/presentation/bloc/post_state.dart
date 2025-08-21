import 'package:flutter_login_tuterual/features/posts/data/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../feature_post/presentation/bloc/post_state.freezed.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.initial() = _Initial;
  const factory PostState.loading() = _Loading;
  const factory PostState.loaded(List<Post> posts) = _Loaded;
  const factory PostState.error(String message) = _Error;
}
