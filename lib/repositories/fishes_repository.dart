import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'package:lns_aquarium/models/fish_model.dart';

class FishesRepository {
  final _baseUrl = Uri.https('acnhapi.com', '/v1/fish');

  Future<AllFish> getFishes() async {
    final response = await http.get(_baseUrl);

    final jsonResponse = convert.jsonDecode(
      response.body,
    ) as Map<String, dynamic>;

    return AllFish.fromJson(jsonResponse);
  }
}
