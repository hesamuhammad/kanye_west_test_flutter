import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {

  final String quote;

  const QuoteCard({
    required this.quote,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
      color: Colors.grey[100],
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Center(child: Text(quote))
      ),
    );
  }
}
