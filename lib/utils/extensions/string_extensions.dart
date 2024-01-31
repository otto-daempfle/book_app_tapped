extension StringEx on String {
  String toImageUrlWithSize(int width, int height) {
    return '$this/$width/$height';
  }
}
