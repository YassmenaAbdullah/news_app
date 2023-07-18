import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/core/model/SourcesResponse.dart';



class ApiManager {
  static const String baseUrl='newsapi.org';
  static const String apiKey='a1f31024e0684bb1b556235614132a3b';


 static Future<SourcesResponse>
 getSources(String categoryId) async {
    // /v2/top-headlines/sources? api "call"
  var url = Uri.https(baseUrl, "/v2/top-headlines/sources",{
     'apiKey':apiKey,
     'category':categoryId,
   });

  var response = await http.get(url);
  // var bodyString = response.body;
  // var json = jsonDecode(bodyString);
  return SourcesResponse.fromJson(jsonDecode(response.body));
  }
}