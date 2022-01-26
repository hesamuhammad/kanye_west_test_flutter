import 'package:flutter/material.dart';
import 'package:kanye_rest/modules/card.dart';
import 'package:get/get.dart';
import 'package:kanye_rest/controller/quotes.dart';
import 'package:kanye_rest/services/api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String quote = 'Quote goes here';
  ApiProvider api = ApiProvider();
  QuoteStore quoteStore = Get.find();
  final snackBar = const SnackBar(content: Text('Yay! A SnackBar!'));

  void getQuote() {
    setQuote('loading');
    api.getQuotes().then((response){
      setQuote(response);
    }, onError: (err){
      setQuote(err);
    });
  }

  void setQuote(newQuote) => setState(() {
    quote = newQuote;
  });

  @override
  void initState() {
    super.initState();
    getQuote();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 75.0),
          const Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://thefader-res.cloudinary.com/images/w_1440,c_limit,f_auto,q_auto:eco/lno64xcmu85kyu0q9pl4/kanye-west.jpg'),
              backgroundColor: Colors.transparent,
              radius: 150.0,
            ),
          ),
          const SizedBox(height: 75.0),
          Column(children: <Widget>[QuoteCard(quote: quote)]),
          const SizedBox(height: 75.0),
          ElevatedButton(
            onPressed: () => getQuote(),
            child: const Text('Get Quote'),
          ),
          ElevatedButton(
            onPressed: () => quoteStore.addQuote(quote),
            child: const Text('Add Quote'),
          ),
        ],
      ),
    );
  }
}
