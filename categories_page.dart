import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              child: Image(
                image: AssetImage('assets/images/profimage.png'),
              ),
            ),
          ),
        ],
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.dashboard_customize_outlined),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 49.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            const Text(
              'Hi, Umar',
              style: TextStyle(fontSize: 20, fontFamily: 'Barlow'),
            ),
            SizedBox(height: 20.0),
            const Text(
              'Find good food \naround you',
              style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(
              height: 20.0,
            ),
            const Text(
              'Most Popular',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Barlow',
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 270,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.orangeAccent.withOpacity(0.2),
                            spreadRadius: 7,
                            blurRadius: 18,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 22.0, left: 22.0, right: 22.0),
                            child: Image(
                              image: AssetImage('assets/images/food1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Crispy Pork',
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '\$ 12.00',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFFFBAB29)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(18),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(35.0),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.orangeAccent.withOpacity(0.2),
                spreadRadius: 7,
                blurRadius: 18,
                offset: Offset(0, 4),
              )
            ]),
        child: FloatingNavbar(
          backgroundColor: Colors.white,
          // elevation: 35.0,
          onTap: (int val) {},
          currentIndex: 0,
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 13),
          borderRadius: 44.0,
          selectedBackgroundColor: null,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.orangeAccent,
          iconSize: 34.0,
          items: [
            FloatingNavbarItem(
              icon: Icons.home_filled,
            ),
            FloatingNavbarItem(
              icon: CupertinoIcons.compass,
            ),
            FloatingNavbarItem(
              icon: Icons.card_travel_outlined,
            ),
            FloatingNavbarItem(
              icon: Icons.person,
            ),
          ],
        ),
      ),
    );
  }
}

