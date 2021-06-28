import 'dart:io';
import 'package:boilerplate/helper/network_error_handling.dart';
import 'package:boilerplate/utils/constants.dart';
import 'package:boilerplate/utils/translation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show Client;
import 'package:http_interceptor/http_client_with_interceptor.dart';
import 'package:boilerplate/data/remote/countriesByName/countries_by_name_model.dart';
import 'package:mime/mime.dart';
import 'package:http_parser/http_parser.dart';


import 'api_interceptor_service.dart';

class ApiService {
    Client client = HttpClientWithInterceptor.build(interceptors: [
    ApiInterceptorService(),
  ]);
  Future<List<GetCountriesByNameResponse>> getCountriesByName(String name) async {
    var response;
    try {
      response = await client.get(
        '${AppConstants.baseUrl}name/$name',
      );
      return getCountriesByNameResponseFromJson(validateResponse(response));
    } on SocketException {
      throw Failure("severNotResponding");
    } catch (e) {
      if (e.toString().contains('SocketException')) {
        throw Failure("internetError");
      } else {
        throw Failure(e.toString(), code: response.statusCode);
      }
    }
  }

  }
