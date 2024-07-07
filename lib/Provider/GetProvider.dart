import 'package:flutter/material.dart';
import '../Models/GetListUserWithModel.dart';
import '../Views/ApiServices.dart';

class GetProvider with ChangeNotifier {
  GetListUserWithModel? result;
  bool isLoading = true;

  getData() async {
    result = await ApiServices().getData();
    isLoading = false;
    notifyListeners();
  }
}
