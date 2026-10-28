class BookDto {
  final int id;
  final String title;
  final String author;
  final String cover;

  const new({
    required this.id,
    required this.title,
    required this.author,
    required this.cover,
  });

  factory BookDto.fromJson(Map<String, dynamic> json) {
  
    return BookDto(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      cover: json['cover'],
    );
  }
}
