import 'dart:convert';
import 'package:http/http.dart' as http;


class NetworkHelper {

  NetworkHelper(this.url);
  final String url;

  Future getData() async{

    var Url = Uri.parse(url);
    http.Response response = await http.get(Url);

    if(response.statusCode == 200){
      String data = response.body;
      return jsonDecode(data);
    }else {
      print(response.statusCode);
    }

}
}