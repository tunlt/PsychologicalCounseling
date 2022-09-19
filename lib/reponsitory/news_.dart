import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/news_model.dart';

List<NewsModel> parseNewsData(List responseBody) {
  return responseBody
      .map<NewsModel>((json) => NewsModel.fromJson(json))
      .toList();
}

Future<List<NewsModel>> fetchNewsData(http.Client client) async {
  var response = await client.get(Uri.parse(''));
  Map map = jsonDecode(response.body);
  return parseNewsData(map['payload']);
}
