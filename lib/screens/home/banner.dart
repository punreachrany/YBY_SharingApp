import 'package:flutter/material.dart';
import 'package:yby_sharing_app/constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image.asset('assets/images/care.png'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 45),
              child: Column(
                children: [
                  Text(
                    "Cheaper, Better",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Bloody Hell! What am I doing here? Fungus!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
