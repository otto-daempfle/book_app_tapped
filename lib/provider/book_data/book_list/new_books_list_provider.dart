import 'package:book_app_tapped/models/book/book.dart';
import 'package:book_app_tapped/services/book_service/book_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final newBooksListProvider =
    FutureProvider.autoDispose<List<Book>>((ref) async {
  final bookService = ref.read(bookServiceProvider);
  return await bookService.fetchNewBooks();
});
