



import 'package:cocktail_app/providers/cocktails_provider.dart';
import 'package:flutter/material.dart';

import 'package:cocktail_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final cocktailsProvider = Provider.of<CocktailsProvider>(context, listen: true);
    print(cocktailsProvider.drinks);
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_rounded),
        centerTitle: true,
        title: const Text('Cocktails', textAlign: TextAlign.center,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeTitle(),
            const CustomSearchInput(),
            CocktailsCard(drinks: cocktailsProvider.drinks),
            const CocktailsSlider(),
            const CocktailsSlider(),
          ],
        ),
      )
    );
  }

}