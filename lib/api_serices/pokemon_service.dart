import 'dart:convert';
import 'package:get_x_demo/api_route/api_rout.dart';
import 'package:get_x_demo/model/pokemon_model.dart';
import 'package:http/http.dart' as http;

class PokemonService {
  static Future<PokemonModel?> pokemonGet() async {
    http.Response response = await http.get(
      Uri.parse(ApiRoute.pokemonUri),
    );
    if (response.statusCode == 200) {
      var pokemonData = response.body;
      print('======>>>>${jsonDecode(response.body)}');
      return pokemonModelFromJson(pokemonData);
    }
  }
}
