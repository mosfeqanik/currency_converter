
import 'package:currency_converter/models/mock_data.dart';

class MockController {
  List<String> getCurrencies (){
    return MockData().getCurrencies();
  }
}