



import 'package:flutter/material.dart';

import 'package:cocktail_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_rounded),
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text('Cocktails', textAlign: TextAlign.center,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeTitle(),
            CustomSearchInput(),
            CocktailsCard(),
            CocktailsSlider()
          ],
        ),
      )
    );
  }

}