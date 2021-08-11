import 'package:flutter/material.dart';

class Drawed extends StatelessWidget {
  Widget listtile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(title),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.pink,
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.pink.shade200,
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Guest",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Kiran Sharma"),
                    ],
                  ),
                ],
              ),
            ),
            listtile(
              icon: Icons.home,
              title: "Home",
            ),
            listtile(
              icon: Icons.person,
              title: "Profile",
            ),
            listtile(
              icon: Icons.notifications,
              title: "Notifications",
            ),
            listtile(
              icon: Icons.favorite_outline,
              title: "Wishlist",
            ),
            listtile(
              icon: Icons.shop_outlined,
              title: "Cart",
            ),
            listtile(
              icon: Icons.feedback_outlined,
              title: "Feedback",
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact Us:",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone_android_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "068-520744 , 9847629098",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.mail),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "shivastores@gmail.com",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_city_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Ramrekha-1, Baglung",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
