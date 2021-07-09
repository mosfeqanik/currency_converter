import 'package:currency_converter/APIConstant/api/api.dart';
import 'package:currency_converter/APIConstant/api/constant.dart';

class NetworkCall {
  //currency
  Future<String> loadCurrencyData() async {
    //URL
    String apiUri = ApiConstant.Get_Currency + '?apikey=${ApiConstant.Api_Key}';
    //URL to uri
    Uri url = Uri.parse(apiUri);
    //uri to response
    var response = await client.get(url);
    return response.body;
  }
}
