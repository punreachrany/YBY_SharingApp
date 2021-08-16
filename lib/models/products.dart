import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Book",
    price: 10,
    description: dummydisc,
    image: "assets/images/book.png",
  ),
  Product(
    id: 2,
    title: "Camera",
    price: 500,
    description: dummydisc,
    image: "assets/images/camera.png",
  ),
  Product(
    id: 3,
    title: "Macbook",
    price: 3000,
    description: dummydisc,
    image: "assets/images/macbook.png",
  ),
  Product(
    id: 4,
    title: "Play Station",
    price: 95,
    description: dummydisc,
    image: "assets/images/playstation.png",
  ),
  Product(
    id: 5,
    title: "Fan",
    price: 10,
    description: dummydisc,
    image: "assets/images/fan.png",
  ),
];

String dummydisc =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
