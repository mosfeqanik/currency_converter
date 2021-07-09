import 'dart:convert';

import 'package:currency_converter/APIConstant/api/constant.dart';
import 'package:currency_converter/models/Currency.dart';

class CurrencyController {
  Future<Currency> getCurrency(String formCurrency) async {
    //receiving response from network
    String response = await network.loadCurrencyData(formCurrency);
    //adding response to modal
    Currency currency = Currency.fromJson(jsonDecode(response));
    return currency;
  }
}
