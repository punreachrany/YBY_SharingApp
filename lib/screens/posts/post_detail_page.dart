import 'package:flutter/material.dart';

import 'package:yby_sharing_app/constants.dart';
import 'package:yby_sharing_app/models/Products.dart';
import 'package:yby_sharing_app/screens/posts/post_body.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
        ],
      ),
      body: Body(
        product: product,
      ),
    );
  }
}
