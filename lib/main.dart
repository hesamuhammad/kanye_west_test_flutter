import 'package:flutter/material.dart';
import 'package:kanye_rest/pages/home.dart';
import 'package:kanye_rest/pages/favorites.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(
    home: RestApp(),
  ));
}

class RestApp extends StatelessWidget {
  const RestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: <Widget>[
            const HomePage(),
            FavoritePage(),
          ],
        ),
      ),
    );
  }
}
