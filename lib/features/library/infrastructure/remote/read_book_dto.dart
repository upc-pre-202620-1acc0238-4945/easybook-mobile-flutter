class ReadBookDto {
  final int id;
  final String title;
  final String author;
  final String cover;
  final String addedAt;

  const new({
    required this.id,
    required this.title,
    required this.author,
    required this.cover,
    required this.addedAt,
  });

  factory ReadBookDto.fromJson(Map<String, dynamic> json) {
    return ReadBookDto(
      id: json['bookId'],
      title: json['title'],
      author: json['author'],
      cover: json['cover'],
      addedAt: json['addedAt'],
    );
  }
}
