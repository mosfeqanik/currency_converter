import 'package:currency_converter/APIConstant/api/api.dart';
import 'package:currency_converter/APIConstant/api/constant.dart';

class NetworkCall {
  //currency
  Future<String> loadCurrencyData(String formCurrency) async {
    //URL
    String apiUri = ApiConstant.Get_Currency +'BTC/$formCurrency'+ '?apikey=${ApiConstant.Api_Key}';
    //URL to uri
    Uri url = Uri.parse(apiUri);
    //uri to response
    var response = await client.get(url);
    return response.body;
  }
}
