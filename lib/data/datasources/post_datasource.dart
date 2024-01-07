import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:http_request/data/models/post_model.dart';

class PostDataSource {
  final dio = Dio(BaseOptions(baseUrl: 'https://crud-api-express-for-mo.onrender.com/api/v1'));

  Future<List<PostModel>> getPosts() async {
    final response = await dio.get('/posts', queryParameters: {
      'deleted': true,
    });

    return (response.data as List<dynamic>).map((item) => PostModel.fromJson(item as Map<String, dynamic>)).toList();
  }

  Future<void> createPost(PostModel post) async {
    final response = await dio.post('/posts', data: post.toJson());

    log(response.data.toString());
  }

  Future<PostModel> getPostById(String id) async {
    final response = await dio.get('/posts/$id');

    return PostModel.fromJson(response.data as Map<String, dynamic>);
  }
}
