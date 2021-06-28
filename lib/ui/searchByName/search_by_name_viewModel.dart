import 'package:boilerplate/data/remote/countriesByName/countries_by_name_model.dart';
import 'package:boilerplate/data/remote/countriesByName/countries_by_name_repository.dart';
import 'package:boilerplate/di/locator.dart';
import 'package:boilerplate/helper/network_error_handling.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SearchByNameViewModel extends BaseViewModel {
  CountriesByNameRepository countriesByNameRepository;
  SearchByNameViewModel({this.countriesByNameRepository});
   SnackbarService _snackbarService = locator<SnackbarService>();

  List<GetCountriesByNameResponse> _getCountriesByNameResponse = [];
  List<GetCountriesByNameResponse> get getCountriesByNameResponse =>
      _getCountriesByNameResponse;

  getCountriesByName(String name) async {
    setBusy(true);

    try {
      await countriesByNameRepository.getCountriesByName(name)
          .then((value) => _onGetCountriesByName(value, null));
    } on Failure catch (e) {
      _onGetCountriesByName(null, e);
    }
    setBusy(false);
  }

  _onGetCountriesByName(
      List<GetCountriesByNameResponse> getCountriesByNameResponse
      , Failure error) async {
    if (error != null)
      _snackbarService.showSnackbar(message: error.message);
    else
      _getCountriesByNameResponse = getCountriesByNameResponse;
  
  }
}
