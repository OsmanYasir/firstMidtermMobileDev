import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, amount, id;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.amount,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Resistor",
      price: 2,
      amount: 100,
      description: dummyText,
      image: "assets/images/resistor.jpeg",
),
  Product(
      id: 2,
      title: "Transistor",
      price: 10,
      amount: 100,
      description: dummyText,
      image: "assets/images/transistor.jpeg",
),
  Product(
      id: 3,
      title: "Capacitor",
      price: 31,
      amount: 10,
      description: dummyText,
      image: "assets/images/capacitor.jpeg",
),
  Product(
      id: 4,
      title: "Diode",
      price: 21,
      amount: 50,
      description: dummyText,
      image: "assets/images/diode.jpeg",
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";


