// To parse this JSON data, do
//
//     final cocktail = cocktailFromMap(jsonString);

import 'dart:convert';
import 'package:cocktail_app/models/drinks.dart';

// Cocktail cocktailFromMap(String str) => Cocktail.fromMap(json.decode(str));

// String cocktailToMap(Cocktail data) => json.encode(data.toMap());

class Cocktail {
    final List<Drink> drinks;

    Cocktail({
        required this.drinks,
    });

    factory Cocktail.fromMap(Map<String, dynamic> json) => Cocktail(
        drinks: List<Drink>.from(json["drinks"].map((x) => Drink.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "drinks": List<dynamic>.from(drinks.map((x) => x.toMap())),
    };

    factory Cocktail.fromJson(String str) => Cocktail.fromMap(json.decode(str));
}

