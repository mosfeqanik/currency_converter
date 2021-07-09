import 'dart:convert';

import 'package:currency_converter/APIConstant/api/constant.dart';
import 'package:currency_converter/models/Currency.dart';

class CurrencyController {
  Future<Currency> getCurrency() async {
    String response = await network.loadCurrencyData();
    Currency currency = Currency.fromJson(jsonDecode(response));
    return currency;
  }
}
