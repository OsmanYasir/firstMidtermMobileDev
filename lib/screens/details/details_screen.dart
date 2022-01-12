import 'package:electronics_parts_store/screens/settingspage/settingspage.dart';
import 'package:flutter/material.dart';
import 'package:electronics_parts_store/constants.dart';
import 'package:electronics_parts_store/models/product.dart';
import 'package:electronics_parts_store/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;

  const DetailsScreen({key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlueAccent,
      elevation: 0,
      title: Text("Electronics Parts Store"),
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const SettingsPage()));

          },
        )
      ],

    );
  }
}