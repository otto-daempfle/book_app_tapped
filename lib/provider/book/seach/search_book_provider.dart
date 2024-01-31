import 'package:book_app_tapped/models/book/book.dart';
import 'package:book_app_tapped/services/book_service/book_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchBooksProvider =
    FutureProvider.family<List<Book>, String>((ref, searchText) async {
  final bookService = ref.read(bookServiceProvider);
  return bookService.searchBooks(searchText);
});
