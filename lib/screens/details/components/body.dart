import 'package:electronics_parts_store/screens/details/components/product_title_with_image.dart';
import 'package:flutter/material.dart';
import 'package:electronics_parts_store/constants.dart';
import 'package:electronics_parts_store/models/product.dart';


class Body extends StatelessWidget {
  final Product? product;

  const Body({Key? key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                ProductTitleWithImage(product: product),
                Container(
                  child: Text("Product: "+ product!.title! + "\n"
                               "Amount: " + product!.amount.toString()+ "\n"
                               "Price: " + product!.price.toString()+ "\n"
                                  ),
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  padding: EdgeInsets.only(
                    top: size.height *0.12,
                    left: defaultPaddin,
                    right: defaultPaddin,
                  ),)

              ],
            ),
          )
        ],
      ),
    );
  }
}

