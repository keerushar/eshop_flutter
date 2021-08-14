import 'package:flutter/material.dart';
import 'package:foodnepal/design/colors.dart';

class ProductOverview extends StatefulWidget {
  const ProductOverview({Key? key}) : super(key: key);

  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  Widget buttomNavigation({
    Color? textColor,
    Color? iconColor,
    String? title,
    IconData? iconData,
    Color? backgroundColor,
  }) {
    return Expanded(
      child: Container(
        color: backgroundColor,
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(
              iconData,
              color: iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title!,
              style: TextStyle(color: textColor, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          buttomNavigation(
              textColor: Colors.white,
              iconColor: Colors.white,
              title: "Add to wishlist",
              iconData: Icons.favorite_outline,
              backgroundColor: Colors.black),
          buttomNavigation(
              textColor: Colors.white,
              iconColor: Colors.white,
              title: "Add to Cart",
              iconData: Icons.share_outlined,
              backgroundColor: primaryColor),
        ],
      ),
      appBar: AppBar(
        title: Text("Product Overview"),
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Highlife Oatsmeal"),
            subtitle: Text("Rs.265"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 260,
              child: Image(
                image: NetworkImage(
                    'https://greatdeals99.com/wp-content/uploads/2020/08/HILIFE-OATS-1-KG-greatdeals99.jpg'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                      " Oats is good for health. It contains gluten and protein which keep your body fit and fine")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
