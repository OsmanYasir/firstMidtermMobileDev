
import 'package:electronics_parts_store/models/product.dart';
import "package:flutter/material.dart";
import '../../../constants.dart';








class ProductTitleWithImage extends StatelessWidget {
  @override
  ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPaddin,
          vertical: defaultPaddin,
        ),
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 300.0,
                width: 300.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(product.image),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              )
            ]
        )
    );
  }
}