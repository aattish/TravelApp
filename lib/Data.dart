import 'package:http/http.dart' as http;
import 'dart:convert';


Future getData() async{

  http.Response response = await http.get('https://jsonplaceholder.typicode.com/photos');
  var data = jsonDecode(response.body);
  return data;
}