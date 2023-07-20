import 'package:http/http.dart' as http;
import 'model.dart';

class httpHelper {
  static Future fetchDetails() async {
    var response = await http
        .get(Uri.parse("http://www.mocky.io/v2/5d565297300000680030a986"));
    if (response.statusCode == 200) {
      var data = response.body;
      return productModelFromJson(data);
    }
  }
}
