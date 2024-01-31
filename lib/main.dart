import 'package:book_app_tapped/book_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  //Init Intl
  initializeDateFormatting('de_DE', null);

  runApp(const ProviderScope(child: BookApp()));
}
