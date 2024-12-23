import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      // Create URI
      var uri = Uri.parse("http://192.168.1.6:8080/accounts/login");

      // Header
      Map<String, String> headers = {"Content-Type": "application/json"};

      // Body
      Map<String, String> data = {
        'email': email,
        'password': password,
      };

      // Convert the above data into JSON
      var body = json.encode(data);

      // Send POST request
      var response = await http.post(uri, headers: headers, body: body);

      // Handle response
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        return {'success': true, 'data': responseData};
      } else {
        final errorData = jsonDecode(response.body);
        return {'success': false, 'message': errorData['message']};
      }
    } catch (e) {
      print("Error occurred: ${e.runtimeType} - $e");
      return {'success': false, 'message': e.toString()};
    }
  }
}
