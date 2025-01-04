import 'dart:convert';
// import 'dart:math';
import 'package:http/http.dart' as http;

import 'package:countries_restapi/data/models/country.dart';

class CountryApi {
  Future<List<Country>?> getAllCountries() async {
    final url = Uri.parse('https://restcountries.com/v3.1/all');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load countries');
      }
    } on http.ClientException catch (e) {
      print('CleintException $e');
      throw Exception('Failed to load countries');
    } catch (e) {
      print('Exception $e');
      throw Exception('Failed to load countries');
    }
  }
}
