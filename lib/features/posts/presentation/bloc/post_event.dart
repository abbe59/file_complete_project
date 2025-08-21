import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../../feature_post/presentation/bloc/post_event.freezed.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.fetchPosts() = _FetchPosts;
}
