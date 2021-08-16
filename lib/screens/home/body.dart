import 'package:flutter/material.dart';
import 'package:yby_sharing_app/models/Products.dart';
import 'package:yby_sharing_app/models/product_list_container.dart';
import 'package:yby_sharing_app/screens/posts/post_detail_page.dart';

import 'banner.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // position of container and all elements in the column
          HomeBanner(size: size),
          // now we create pets sections
          SizedBox(
            height: 20,
          ),

          Row(
            children: [
              Text(
                "Product",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          // create column
          Expanded(
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.60,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => ProductsListContainer(
                        product: products[index],
                        press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostDetailPage(
                                      product: products[index],
                                    ))),
                      )))
        ],
      ),
    );
  }
}
