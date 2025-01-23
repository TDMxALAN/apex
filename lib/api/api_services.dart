import 'dart:convert';

import 'package:apex/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  final baseUrl = "https://fakestoreapi.in/api/products/1";

  Future<ProductModel> fetchAllData() async {
    try {
      final resonse = await http.get(Uri.parse(baseUrl));
      if (resonse.statusCode == 200) {
        final data = jsonDecode(resonse.body);

        return ProductModel.formJson(data);
      }
      throw Exception("Error to fetch data !");
    } catch (errors) {
      print(errors.toString());
      throw Exception("Error $errors !");
    }
  }
}
