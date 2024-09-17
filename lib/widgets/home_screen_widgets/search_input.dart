import 'package:flutter/material.dart';

class CustomSearchInput extends StatelessWidget {
  const CustomSearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 40,
      child: SearchBar(
        elevation: const MaterialStatePropertyAll(2),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)
          ),
        ),
        hintText: 'Search for your favorite cocktail',
        hintStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 12,)),
        leading: const Icon(Icons.search_outlined),
        // trailing: <Widget>[
        //   IconButton(onPressed: (){}, icon: const Icon(Icons.filter_list_rounded, size: 25,)),
        //   // Padding(
        //   //   padding: const EdgeInsets.all(10),
        //   //   child: Container(
        //   //     padding: EdgeInsets.all(1),
        //   //     color: Colors.white,
        //   //     child: IconButton(onPressed: (){}, icon: const Icon(Icons.filter_list_rounded, size: 20,)),
        //   //   ),
        //   // )
        // ],
      ),
    );
  }
}