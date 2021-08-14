import 'package:flutter/material.dart';
import 'package:foodnepal/Homepage/draweritem.dart';
import 'package:foodnepal/Homepage/singleitem.dart';
import 'package:foodnepal/design/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              child: Icon(
                Icons.search,
                size: 20,
                color: iconColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CircleAvatar(
                radius: 15,
                child: Icon(
                  Icons.shop,
                  size: 20,
                  color: iconColor,
                ),
              ),
            ),
          ],
          backgroundColor: primaryColor,
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
              dailyItem(context),
            ],
          ),
        ));
  }

  Column dailyItem(BuildContext context) {
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
                  // onTap: () {
                  //   Navigator.of(context).push(
                  //       MaterialPageRoute(builder: (_) => ProductOverview()));
                  // },
                  productImage:
                      'https://static.sscontent.com/prodimg/thumb/500/500/products/124/v725637_prozis_peanut-butter-500-g_crunchy_newin_flavor.jpg',
                  productName: 'Peanuts Butter',
                  productRate: "Rs.450",
                  productDis: "10% off",
                ),
                SingleProduct(
                  productImage:
                      'https://www.himalmart.com/public/upload/product/extra/amul-dark-chocolate-40g-5ffc0b43927d7.jpg',
                  productName: 'Amul Dark Chocolate',
                  productRate: "Rs.80",
                  productDis: "1% off",
                ),
                SingleProduct(
                  productImage:
                      'https://shopwholly.com/wp-content/uploads/2020/11/puff-1.jpg',
                  productName: 'Khajurico Puff',
                  productRate: "Rs.55",
                  productDis: "1% off",
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
                  color: viewAll,
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
                    productDis: "10% off"),
                SingleProduct(
                    productImage:
                        'https://v3.infi.store/wp-content/uploads/2021/01/HILIFEFN-128.jpg',
                    productName: 'Chia Seeds',
                    productRate: "Rs.295",
                    productDis: "5% off"),
                SingleProduct(
                    productImage:
                        'https://ml1pmsm7fdxx.i.optimole.com/LHWGtwY-9M1K5e8_/w:auto/h:auto/q:auto/https://hilifefoods.com.np/wp-content/uploads/2020/09/Corn-flakes-1.jpg',
                    productName: 'Corn Flakes',
                    productRate: "Rs.300",
                    productDis: "2% off"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
