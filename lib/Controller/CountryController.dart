import 'package:tipster/Network/ApiClient.dart';
import 'package:tipster/Network/ApiConstant.dart';

import '../Models/CountryModel.dart';

class CountryController {
  Future<CountryModel> getCountry() async {
    var response = await PostData(
        PARAM_URL: ApiConstant.getCountry, params: {'user_id': '78'});

    return CountryModel.fromJson(response);
  }
}
