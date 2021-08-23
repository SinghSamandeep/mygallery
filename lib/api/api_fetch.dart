import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:jrs_project/models/image_model.dart';

class ApiFetch {

  Future <List<Datum>?> fetchImage() async {
    print("hello");

    try{
      var response = await http.get(Uri.parse("https://bj40ox308j.execute-api.ap-south-1.amazonaws.com/default/codingskilltest_flutter")
      )
          .timeout(const Duration(seconds: 10),onTimeout: (){
        throw TimeoutException("connection Time out");
      });
      if (response.statusCode == 200) {

        final Map<String,dynamic> jsonresponse = json.decode(response.body);
        print(jsonresponse);
        ImageModel imageModel = ImageModel.fromJson(jsonresponse);
     return imageModel.data;
      } else{
        return null;
      }
    }on TimeoutException catch(_){
      print("Hello");
    }
  }
}
