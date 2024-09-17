import 'package:card_swiper/card_swiper.dart';
import 'package:cocktail_app/models/models.dart';
import 'package:flutter/material.dart';

class CocktailsCard extends StatelessWidget {

  // final List<Drink> drinks;
  final List<Drink> drinks;
  const CocktailsCard({required this.drinks, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Swiper(
        axisDirection: AxisDirection.right,
        scrollDirection: axisDirectionToAxis(AxisDirection.left),
        itemCount: drinks.length,
        layout: SwiperLayout.STACK,
        itemWidth:150,
        itemHeight: 170,
        itemBuilder: (_, int index){
          // print(drinks[index].strDrink);
          return GestureDetector(
            onTap: () => print('gesture card swiper'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: FadeInImage(
                placeholder: const AssetImage('assets/loading.gif'),
                image: NetworkImage(drinks[index].strDrinkThumb)
              ),
            ), 
          );
        },
      )
    );
  }


  Widget _cocktailCard(){
    return Container(
      width: 40,
      height: 30,
      color: Colors.red,
    );
  }

}