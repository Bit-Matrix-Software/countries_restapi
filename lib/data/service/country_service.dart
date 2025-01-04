import 'package:countries_restapi/data/models/country.dart';
import 'package:countries_restapi/data/provider/country_api.dart';

class CountryService {
  final _api = CountryApi();
  Future<List<Country>?> getAllCountries() async{
    return _api.getAllCountries();
  }
}