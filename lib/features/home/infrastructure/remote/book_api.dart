import 'dart:convert';
import 'dart:io';

import 'package:book_app/features/home/infrastructure/remote/book_dto.dart';
import 'package:http/http.dart' as http;

class BookApi {
  final String url =
      'https://bookapp-gveteaa0dqf0eycn.eastus-01.azurewebsites.net/api/books';

  Future<List<BookDto>> getBooks() async {
    Uri uri = Uri.parse(url);

    http.Response response = await http.get(uri);

    if (response.statusCode == HttpStatus.ok) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List jsons = json['results'];
      return jsons.map(((e) => BookDto.fromJson(e))).toList();
    }

    throw Exception('Failed to load books');
  }
}
