/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Article implements _i1.SerializableModel {
  Article._({
    this.id,
    required this.title,
    required this.content,
    required this.publishedOn,
    required this.isPrime,
  });

  factory Article({
    int? id,
    required String title,
    required String content,
    required DateTime publishedOn,
    required bool isPrime,
  }) = _ArticleImpl;

  factory Article.fromJson(Map<String, dynamic> jsonSerialization) {
    return Article(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      content: jsonSerialization['content'] as String,
      publishedOn: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['publishedOn'],
      ),
      isPrime: jsonSerialization['isPrime'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String content;

  DateTime publishedOn;

  bool isPrime;

  /// Returns a shallow copy of this [Article]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Article copyWith({
    int? id,
    String? title,
    String? content,
    DateTime? publishedOn,
    bool? isPrime,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Article',
      if (id != null) 'id': id,
      'title': title,
      'content': content,
      'publishedOn': publishedOn.toJson(),
      'isPrime': isPrime,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ArticleImpl extends Article {
  _ArticleImpl({
    int? id,
    required String title,
    required String content,
    required DateTime publishedOn,
    required bool isPrime,
  }) : super._(
         id: id,
         title: title,
         content: content,
         publishedOn: publishedOn,
         isPrime: isPrime,
       );

  /// Returns a shallow copy of this [Article]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Article copyWith({
    Object? id = _Undefined,
    String? title,
    String? content,
    DateTime? publishedOn,
    bool? isPrime,
  }) {
    return Article(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      publishedOn: publishedOn ?? this.publishedOn,
      isPrime: isPrime ?? this.isPrime,
    );
  }
}
