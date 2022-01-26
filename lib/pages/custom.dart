import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kanye_rest/controller/quotes.dart';

class CustomQuotePage extends StatelessWidget {

  final QuoteStore quoteStore = Get.find();

  CustomQuotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 75.0),
        const Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://thefader-res.cloudinary.com/images/w_1440,c_limit,f_auto,q_auto:eco/lno64xcmu85kyu0q9pl4/kanye-west.jpg'),
            backgroundColor: Colors.transparent,
            radius: 150.0,
          ),
        ),
        ElevatedButton(
          onPressed: () => quoteStore.addQuote(quote),
          child: const Text('Add Quote'),
        ),
      ],
    ),
  }
}
