
import 'package:electronics_parts_store/models/product.dart';
import 'package:electronics_parts_store/screens/details/details_screen.dart';
import 'package:electronics_parts_store/screens/settingspage/settingspage.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/drawer.dart';
import 'components/item_card.dart';
import 'components/body.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Electronics Parts Page"),
      ),
      drawer: buildDrawer(context),
      body: const Body()
    );
  }
}





