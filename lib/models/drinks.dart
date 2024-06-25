import 'dart:convert';

class Drink {
    final String strDrink;
    final String strDrinkThumb;
    final String idDrink;

    Drink({
        required this.strDrink,
        required this.strDrinkThumb,
        required this.idDrink,
    });

    factory Drink.fromMap(Map<String, dynamic> json) => Drink(
        strDrink: json["strDrink"],
        strDrinkThumb: json["strDrinkThumb"],
        idDrink: json["idDrink"],
    );

    Map<String, dynamic> toMap() => {
        "strDrink": strDrink,
        "strDrinkThumb": strDrinkThumb,
        "idDrink": idDrink,
    };
    factory Drink.fromJson(String str) => Drink.fromMap(json.decode(str));
  
}