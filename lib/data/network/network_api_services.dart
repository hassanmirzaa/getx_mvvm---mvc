import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:getx_mvvmmvc/data/app_exceptions.dart';
import 'package:getx_mvvmmvc/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {

    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;

    try {
      final response = await http.get(Uri.parse(url)).timeout(
          const Duration(seconds: 10)); //timeout ki duration backend dev btayega
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeout {
      throw RequestTimeout();
    }

    return responseJson;
  }

  Future<dynamic> postApi(var data ,String url) async {

    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;

    try {
      final response = await http.post(Uri.parse(url),
      body: jsonEncode(data) //raw form me nhi hoa agr data to encode nahi likhna prega
      
      ).timeout(const Duration(seconds: 10)); //timeout ki duration backend dev btayega
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on RequestTimeout {
      throw RequestTimeout();
    }

    return responseJson;
  }


  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        throw ServerException();

      default:
        throw FetchDataException(
            'Error occured while communicating with server ' +
                response.statusCode.toString());
    }
  }
}
