import 'package:dio/dio.dart';
import 'package:flutter_login_tuterual/features/posts/data/models/post.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client_post.g.dart'; // ملف مولد

@RestApi(baseUrl: "https://10.251.102.56:8000/api")
abstract class ApiClientPost {
  factory ApiClientPost(Dio dio, {String baseUrl}) = _ApiClientPost;

  @GET("/posts")
  Future<List<Post>> getPosts();
}
