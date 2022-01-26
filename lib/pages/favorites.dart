import 'package:flutter/material.dart';
import 'package:kanye_rest/modules/card.dart';
import 'package:kanye_rest/controller/quotes.dart';
import 'package:get/get.dart';

class FavoritePage extends StatelessWidget {

  final QuoteStore quoteStore = Get.put(QuoteStore());

  FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(quoteStore.quotes.isNotEmpty){
      return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: quoteStore.quotes.map((quote) => QuoteCard(quote: quote)).toList(),
          ),
        ),
      );
    } else {
      return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const <Widget>[
              QuoteCard(quote: 'No favorites')
            ],
          ),
        ),
      );
    }
  }
}
