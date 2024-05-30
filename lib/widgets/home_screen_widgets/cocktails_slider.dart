import 'package:flutter/material.dart';

class CocktailsSlider extends StatelessWidget {
  const CocktailsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20), 
              child: Text('Most populars', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (_, int index) {
                  return Container(
                    width: 100,
                    height: 30,
                    color: Colors.grey,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  );
                }
              ),
            )
        ],
      ),
    );
  }
}