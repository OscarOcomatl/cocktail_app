


import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 20, top: 5, bottom: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              alignment: Alignment.centerLeft,
              // padding: EdgeInsets.only(),
              width: 300,
              height: 70,
              // color: Colors.red,
              child: Column(
                children: [
                  Container(
                  alignment: Alignment.centerLeft,
                    child: const Text('Find Good', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
                  ),
                  Container(
                  alignment: Alignment.centerLeft,
                    child: const Text('Food Around You', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
