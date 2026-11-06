import 'dart:convert';
import 'dart:io';

import 'package:book_app/core/token_storage.dart';
import 'package:book_app/features/library/infrastructure/remote/read_book_dto.dart';
import 'package:http/http.dart' as http;

class ReadlistApi {
  final TokenStorage _storage;

  const new({required this._storage});
  final String url =
      'https://bookapp-gveteaa0dqf0eycn.eastus-01.azurewebsites.net/api/readlists';

  Future<List<ReadBookDto>> getReadBooks() async {
    Uri uri = Uri.parse(url);
    final String? token = await _storage.getToken();
    final http.Response response = await http.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == HttpStatus.ok) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      final List jsons = json['results'];

      return jsons.map((e) => ReadBookDto.fromJson(e)).toList();
    }

    throw Exception('Failed to load library');
  }
}
