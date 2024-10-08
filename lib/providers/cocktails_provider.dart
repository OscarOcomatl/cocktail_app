import 'package:cocktail_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CocktailsProvider extends ChangeNotifier {
  final String _baseUrl = 'thecocktaildb.com';

  List<Cocktail> ordinaryCocktails = [];
  List<Drink> drinks = [];

  CocktailsProvider(){
    getOrdinaryCocktails();
  }

  Future<String> _getJsonData(String endpoint) async {
    // final url = Uri.https(_baseUrl, endpoint);
    // final url = '${_baseUrl}filter.php?$endpoint';
    final url = Uri.https(_baseUrl, endpoint, {'c':'Ordinary_Drink'});
    final response = await http.get(url);
    return response.body;
  }

  getOrdinaryCocktails() async {
    final jsonData = await _getJsonData('/api/json/v1/1/filter.php');
    // print(jsonData);
    final cocktailsResponse = Cocktail.fromJson(jsonData);
    // print(cocktailsResponse);
    drinks = cocktailsResponse.drinks;
    notifyListeners();
    // drinks = cocktailsResponse.drinks;
    // notifyListeners();
  }

}