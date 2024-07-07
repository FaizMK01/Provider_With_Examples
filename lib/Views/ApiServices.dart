import 'dart:convert';
import '../Models/GetListUserWithModel.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  //Get Api With {} []

  Future<GetListUserWithModel?> getData() async {
    try {
      final response =
          await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
      var data = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return GetListUserWithModel.fromJson(data);
      } else {
        print("Error");
        return null;
      }
    } catch (e) {
      print("Exception");
      return null;
    }
  }

//Post Api WithOut Model
  Future<dynamic> postData(String email, String password) async {
    dynamic apiResponse;
    final response = await http.post(
      Uri.parse('https://reqres.in/api/login'),
      body: {
        "email": email,
        "password": password
      },
    );
    if (response.statusCode == 200) {
      apiResponse = jsonDecode(response.body);
      return apiResponse;
    } else {
      throw Exception('Failed to login');
    }
  }
}
