class Book {
  String title;
  String author;
  DateTime publishDate;
  String coverUrl;

  Book({this.title = '', this.author = '', this.coverUrl = ''})
      : publishDate = DateTime(2000);

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'],
      author: json['author'],
      coverUrl: json['coverUrl'],
    )..publishDate = DateTime.parse(json['publishDate']);
  }
}
