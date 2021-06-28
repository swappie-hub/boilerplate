import 'package:boilerplate/data/remote/countriesByName/countries_by_name_model.dart';
import 'package:boilerplate/data/remote/countriesByName/countries_by_name_repository.dart';
import 'package:boilerplate/services/api_services.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders
];

List<SingleChildWidget> independentServices = [
  Provider.value(value: ApiService()),

];

List<SingleChildWidget> dependentServices = [
  ProxyProvider<ApiService, CountriesByNameRepository>(
    update: (context, api, countriesByNameRepository) => CountriesByNameRepository(api: api),
  ),

  
];

List<SingleChildWidget> uiConsumableProviders = [

];
