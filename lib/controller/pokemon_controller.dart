import 'package:get/get.dart';
import 'package:get_x_demo/api_serices/pokemon_service.dart';
import 'package:get_x_demo/model/pokemon_model.dart';

class PokemonController extends GetxController {
  var isLoading = true.obs;
  PokemonModel? pokemonList;

  fetchPokemon() async {
    isLoading(true);
    try {
      final pokemonDetail = await PokemonService.pokemonGet();
      pokemonList = pokemonDetail;
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    fetchPokemon();
    super.onInit();
  }
}
