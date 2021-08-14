import 'package:flutter/material.dart';
import 'package:foodnepal/design/colors.dart';
import 'package:foodnepal/widgets/product_overview.dart';

class SingleProduct extends StatelessWidget {
  final String? productImage;
  final String? productName;
  final String? productRate;
  final String? productDis;
  // final Function? onTap;

  const SingleProduct({
    Key? key,
    this.productImage,
    this.productName,
    this.productRate,
    this.productDis,
    //  this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            height: 230,
            width: 165,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  GestureDetector(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> ProductOverview())),
                  child: Container(
                    height: 160,
                    padding: EdgeInsets.all(5),
                    child: Image(
                      image: NetworkImage(productImage!),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
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
                            color: itemCost,
                          ),
                        ),
                        Text(
                          productDis!,
                          style: TextStyle(
                            color: discount,
                          ),
                        )
                      ],
                    ),
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
