// import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
// import 'dart:developer';

class ApiProvider extends GetConnect {

  Future<String> getQuotes() async {
    final response = await get('https://api.kanye.rest/');
    if (response.status.hasError) {
      return Future.error('response.statusText');
    } else {
      return response.body['quote'];
    }
  }
}