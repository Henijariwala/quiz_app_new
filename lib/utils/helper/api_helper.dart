import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quiz_app/screen/home/model/home_model.dart';
class APIHelper{

  static APIHelper helper = APIHelper._();
  APIHelper._();

  Future<ResultModel?> getData() async {
    String link = "https://opentdb.com/api.php?amount=10&category=19&difficulty=medium&type=multiple";
    var resp = await http.get(Uri.parse(link));
    if(resp.statusCode == 200){
      var json = jsonDecode(resp.body);
      ResultModel model = ResultModel.mapToModel(json);
      return model;
    }
    return null;
  }

}