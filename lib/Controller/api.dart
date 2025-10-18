import 'package:http/http.dart' as http;

void fetchData() async {
  var url = Uri.parse('https://dummyjson.com/auth/login');
  var response = await http.get(url);
  print(response.body);
}
