import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get_x_demo/controller/pokemon_controller.dart';

class PokemonHomePage extends StatelessWidget {
  PokemonController pokemonController = Get.put(PokemonController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                if (pokemonController.isLoading.value) {
                  return const Center(child: CupertinoActivityIndicator());
                } else {
                  return MasonryGridView.count(
                    itemCount: pokemonController.pokemonList!.pokemon!.length,
                    crossAxisCount: 3,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Image.network(
                              '${pokemonController.pokemonList!.pokemon![index].img}',
                              height: 100,
                              width: 100,
                            ), // CachedNetworkImage(
                            //   imageUrl: "http://via.placeholder.com/350x150",
                            //   placeholder: (context, url) =>
                            //       CircularProgressIndicator(),
                            //   errorWidget: (context, url, error) =>
                            //       Icon(Icons.error),
                            // ),
                            // CachedNetworkImage(
                            //   imageUrl:
                            //       'http://www.serebii.net/pokemongo/pokemon/001.png',
                            //   placeholder: (context, url) =>
                            //       CircularProgressIndicator(),
                            //   errorWidget: (context, url, error) =>
                            //       Icon(Icons.error),
                            // ),
                            // Text(
                            //   '${pokemonController.pokemonList!.pokemon![index].name}',
                            // ),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
