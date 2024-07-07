import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider_practice/Views/ApiServices.dart';

class PostProvider with ChangeNotifier {

  Future<Map<String, dynamic>?> postDataWithOutMode(BuildContext context, String email, String password) async {
    try {
      final response = await ApiServices().postData(email, password);
      return response;
    } catch (e) {
      print("Error: $e");
      return null;
    } finally {
      notifyListeners();
    }
  }
}
