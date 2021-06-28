import 'package:boilerplate/data/remote/countriesByName/countries_by_name_model.dart';
import 'package:boilerplate/services/api_services.dart';

class CountriesByNameRepository {
  ApiService api;

  CountriesByNameRepository({this.api});
  Future<List<GetCountriesByNameResponse>> getCountriesByName(String name) async {
    List<GetCountriesByNameResponse> response = await api.getCountriesByName(name);
    return response;
  }
}
