import 'package:flutter/material.dart';
import 'package:http_request/data/repositories/post_repository.dart';
import 'package:http_request/service_locator.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final repository = getIt.get<PostRepository>();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
