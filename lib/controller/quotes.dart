import 'package:get/get.dart';
import 'package:flutter/material.dart';

class QuoteStore extends GetxController{
  List quotes = <String>[].obs;
  void addQuote(String quote) => {
    if(quotes.contains(quote)){
      Get.closeAllSnackbars(),
      Get.snackbar('Error', 'duplicate quote',
        icon: const Icon(Icons.add_alert_outlined),
        backgroundColor: Colors.grey[400],
      )
    } else {
      Get.closeAllSnackbars(),
      Get.snackbar('Info', 'Quote saved', icon: const Icon(Icons.anchor)),
      quotes.add(quote)
    }
  };
  void removeQuote(String quote) => quotes.remove(quote);
}