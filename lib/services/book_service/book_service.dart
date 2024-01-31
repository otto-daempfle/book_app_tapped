import 'dart:math';
import 'package:book_app_tapped/models/book/book.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bookServiceProvider = Provider<BookService>((ref) {
  return BookService();
});

class BookService {
  late Dio _dio;
  BookService() {
    _dio = Dio();
  }

  Future<dynamic> fetchContinueBooks() async {
    //Simulate API Call
    await Future<void>.delayed(const Duration(seconds: 1));
    return (books).map((e) => Book.fromJson(e)).toList();
  }

  Future<dynamic> fetchNewBooks() async {
    //Simulate API Call
    await Future<void>.delayed(const Duration(seconds: 1));
    return (books).map((e) => Book.fromJson(e)).toList();
  }

  Future<List<Book>> searchBooks(String searchText) async {
    try {
      final response = await _dio.get<List<dynamic>>(
        'http://universities.hipolabs.com/search?name=$searchText',
      );

      final foundUnis = (response.data as List).cast<Map<String, dynamic>>();
      final limitedUnis = foundUnis.take(5).toList(); // Limiting to 5 items

      return limitedUnis.map((uni) {
        return Book(
          title: uni['name'],
          author: uni['country'],
          coverUrl: 'https://picsum.photos/id/${Random().nextInt(150)}',
        );
      }).toList();
    } catch (e) {
      throw Exception('Fehler beim Suchen der Bücher: ${e.toString()}');
    }
  }
}

final books = [
  {
    'title': 'More Than Words',
    'author': 'John Sullivan',
    'coverUrl': 'https://picsum.photos/id/144',
    'publishDate': DateTime(2021, 2, 4).toIso8601String(),
  },
  {
    'title': "Crazy 8's",
    'author': 'Jake Knapp',
    'coverUrl': 'https://picsum.photos/id/142',
    'publishDate': DateTime(2021, 4, 25).toIso8601String(),
  },
  {
    'title': 'My Book Cover',
    'author': 'A lot of authors',
    'coverUrl': 'https://picsum.photos/id/98',
    'publishDate': DateTime(2021, 4, 25).toIso8601String(),
  },
  {
    'title': 'The Hidden Path',
    'author': 'Emily Brontë',
    'coverUrl': 'https://picsum.photos/id/135',
    'publishDate': DateTime(2021, 6, 15).toIso8601String(),
  },
  {
    'title': 'Journey Through Time',
    'author': 'Leo Tolstoy',
    'coverUrl': 'https://picsum.photos/id/71',
    'publishDate': DateTime(2021, 7, 21).toIso8601String(),
  },
];
