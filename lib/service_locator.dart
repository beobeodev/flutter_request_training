import 'package:get_it/get_it.dart';
import 'package:http_request/data/datasources/post_datasource.dart';
import 'package:http_request/data/repositories/post_repository.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton(PostDataSource());
  getIt.registerSingleton(PostRepository(getIt.get<PostDataSource>()));
}
