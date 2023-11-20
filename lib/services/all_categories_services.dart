// ignore_for_file: missing_required_param

import 'package:store/helper/api.dart';

class AllCategoriesServices {
  Future<List<dynamic>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    return data;
  }
}
