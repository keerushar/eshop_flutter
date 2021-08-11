import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String? productImage;
  final String? productName;
  final String? productRate;
  final String? productDis;

  const SingleProduct(
      {Key? key,
      this.productImage,
      this.productName,
      this.productRate,
      this.productDis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            height: 230,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: NetworkImage(productImage!),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName!,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        productRate!,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        productDis!,
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
