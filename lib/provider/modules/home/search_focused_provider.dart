import 'package:book_app_tapped/provider/modules/home/search_focus_node_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchFocusedProvider = StateNotifierProvider<FocusedNotifier, bool>(
  (ref) => FocusedNotifier(
    ref.watch(searchFocusNode),
  ),
);

class FocusedNotifier extends StateNotifier<bool> {
  FocusNode focusNode;

  FocusedNotifier(this.focusNode) : super(focusNode.hasFocus) {
    focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    state = focusNode.hasFocus;
  }

  @override
  void dispose() {
    focusNode.removeListener(_onFocusChange);
    super.dispose();
  }
}
