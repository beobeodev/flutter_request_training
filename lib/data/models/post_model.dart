import 'package:flutter/foundation.dart';

class PostModel {
  final int id;
  final String title;
  final String content;
  final List<String> tags;

  PostModel({required this.id, required this.title, required this.content, required this.tags});

  @override
  String toString() {
    return 'PostModel(id: $id, title: $title, content: $content, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PostModel &&
        other.id == id &&
        other.title == title &&
        other.content == content &&
        listEquals(other.tags, tags);
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ content.hashCode ^ tags.hashCode;
  }

  Map<String, dynamic> toJson() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'title': title});
    result.addAll({'content': content});
    result.addAll({'tags': tags});

    return result;
  }

  factory PostModel.fromJson(Map<String, dynamic> map) {
    return PostModel(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      content: map['content'] ?? '',
      tags: List<String>.from(map['tags']),
    );
  }

  PostModel copyWith({
    int? id,
    String? title,
    String? content,
    List<String>? tags,
  }) {
    return PostModel(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      tags: tags ?? this.tags,
    );
  }
}
