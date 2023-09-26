import 'dart:convert';

import 'package:covid_app/Services/Utilities/app_url.dart';
import 'package:http/http.dart' as http;

import '../Models/worldstates_model.dart';

class StatesServices{

  Future<WorldStatesModel> getData  ()async{
    final response  = await http.get(Uri.parse(AppUrl.worldStatesApi));
    if(response.statusCode == 200){
      var data  = json.decode(response.body);
      return WorldStatesModel.fromJson(data);
    }
    else{
        throw(Exception("Error"));
    }
  }
  

}