import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/item.dart';
import 'package:http/http.dart' as http;

final apiProvider = Provider((_) => API(http.Client()));

class API {
  final http.Client client;

  static const authority = 'hacker-news.firebaseio.com';

  API(this.client);

  Future<List<int>> getTopStoryIds() async {
    final response =
        await client.get(Uri.https(API.authority, '/v0/topstories.json'));
    final List<int> ids = List<int>.from(jsonDecode(response.body));
    return ids;
  }

  Future<Item> getItem(int id) async {
    final response =
    await client.get(Uri.https(authority, '/v0/item/$id.json'));
    final Map<String, dynamic> json = jsonDecode(response.body);
    return Item.fromJson(json);
  }
}
