import 'package:dio/dio.dart';
import 'api_urls.dart';
import 'network_config.dart';

class ApiController {
  NetworkConfig? _networkConfig;

  ApiController() {
    _networkConfig = NetworkConfig();
  }

  onClearCash() {
    _networkConfig!.clearCacheOptions();
  }


  // recipes
  Future<Response> onRecipes() {
    var header = <String, String>{

    };
    var query = <String, dynamic>{};
    return _networkConfig!.get(
      url: ApiUrls.recipesUrl,
      headers: header,
      query: query,
    );
  }

}
