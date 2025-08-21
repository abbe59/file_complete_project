import 'package:flutter_login_tuterual/features/posts/data/models/post.dart';
import 'package:injectable/injectable.dart';
import 'api_client_post.dart';

@lazySingleton
class PostRemoteDataSource {
  final ApiClientPost apiClientPost;

  PostRemoteDataSource(this.apiClientPost);

  Future<List<Post>> getPosts() => apiClientPost.getPosts();
}
