import 'package:http_request/data/datasources/post_datasource.dart';
import 'package:http_request/data/models/post_model.dart';

class PostRepository {
  final PostDataSource _dataSource;

  PostRepository(this._dataSource);

  Future<List<PostModel>> getPosts() {
    return _dataSource.getPosts();
  }

  Future<void> createPost(PostModel post) {
    return _dataSource.createPost(post);
  }
}
