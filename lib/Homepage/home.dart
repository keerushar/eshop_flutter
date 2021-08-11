import 'package:flutter/material.dart';
import 'package:foodnepal/Homepage/draweritem.dart';
import 'package:foodnepal/Homepage/singleitem.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[350],
        drawer: Drawed(),
        appBar: AppBar(
          title: Text("Shiva Stores"),
          actions: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.pink.shade200,
              child: Icon(
                Icons.search,
                size: 20,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.pink.shade200,
                child: Icon(
                  Icons.shop,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.pink,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://www.marketingtutor.net/wp-content/uploads/2019/11/departmental-store-everything-you-want-to-know.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Flat 10% discount",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              BoxShadow(
                                  blurRadius: 5,
                                  color: Colors.black,
                                  offset: Offset(3, 3))
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              trendingItem(),
              dailyItem(),
            ],
          ),
        ));
  }

  Column dailyItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Daily items",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "View all",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SingleProduct(
                  productImage:
                      'https://greatdeals99.com/wp-content/uploads/2020/08/HILIFE-OATS-1-KG-greatdeals99.jpg',
                  productName: 'Highlife Oats',
                  productRate: "Rs.275",
                  productDis: "50% off",
                ),
                SingleProduct(
                  productImage:
                      'https://greatdeals99.com/wp-content/uploads/2020/08/HILIFE-OATS-1-KG-greatdeals99.jpg',
                  productName: 'Highlife Oats',
                  productRate: "Rs.275",
                  productDis: "50% off",
                ),
                SingleProduct(
                  productImage:
                      'https://greatdeals99.com/wp-content/uploads/2020/08/HILIFE-OATS-1-KG-greatdeals99.jpg',
                  productName: 'Highlife Oats',
                  productRate: "Rs.275",
                  productDis: "50% off",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column trendingItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending Items",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "View all",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SingleProduct(
                    productImage:
                        'https://greatdeals99.com/wp-content/uploads/2020/08/HILIFE-OATS-1-KG-greatdeals99.jpg',
                    productName: 'Highlife Oats',
                    productRate: "Rs.275",
                    productDis: "50% off"),
                SingleProduct(
                    productImage:
                        'https://v3.infi.store/wp-content/uploads/2021/01/HILIFEFN-128.jpg',
                    productName: 'Chia Seeds',
                    productRate: "Rs.295",
                    productDis: "40% off"),
                SingleProduct(
                    productImage:
                        'https://ml1pmsm7fdxx.i.optimole.com/LHWGtwY-9M1K5e8_/w:auto/h:auto/q:auto/https://hilifefoods.com.np/wp-content/uploads/2020/09/Corn-flakes-1.jpg',
                    productName: 'Corn Flakes',
                    productRate: "Rs.300",
                    productDis: "30% off"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
