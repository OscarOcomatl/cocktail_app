import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CocktailsCard extends StatelessWidget {
  const CocktailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Swiper(
        axisDirection: AxisDirection.right,
        scrollDirection: axisDirectionToAxis(AxisDirection.left),
        itemCount: 3,
        layout: SwiperLayout.STACK,
        itemWidth:150,
        itemHeight: 170,
        itemBuilder: (_, int index){
          return GestureDetector(
            onTap: ()=> print('gesture card swiper'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(width: 50, height: 40, color: Colors.red,),
              
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