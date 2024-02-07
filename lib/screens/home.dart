import 'package:carousel_slider/carousel_slider.dart';
import 'package:feverpay/screens/components/box.dart';
import 'package:feverpay/screens/components/card.dart';
import 'package:feverpay/screens/components/invisible_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color.fromARGB(255, 247, 178, 201), Colors.white],
            ),
          ),
        ),
        title: Container(
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(CircleBorder()),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shadowColor:
                      MaterialStateProperty.all(Colors.grey.withOpacity(0.3)),
                  elevation: MaterialStateProperty.all(
                      5), // Adjust the elevation value for softness
                ),
                child: const Icon(Icons.favorite, color: Colors.pink),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.white,
                  ),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.pink,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search in Cyberjaya',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.gps_fixed,
                          color: Colors.pink,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: 80.0, // Set the height of the AppBar
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    BoxItem(
                      icon: Icons.monetization_on,
                      title: 'RM0.00',
                      subtitle: 'My cashback',
                      iconColor: Colors.orange,
                    ),
                    BoxItem(
                      icon: Icons.percent,
                      title: 'RM0.00',
                      subtitle: 'Promo codes',
                      iconColor: Colors.pink,
                    ),
                    BoxItem(
                      icon: Icons.airplane_ticket,
                      title: 'x5',
                      subtitle: 'Deals',
                      iconColor: Colors.pink,
                    ),
                    BoxItem(
                      icon: Icons.airplane_ticket_outlined,
                      title: '0',
                      subtitle: 'Tickets',
                      iconColor: Colors.purple,
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              children: [
                InvisibleBox(
                  icon: Icons.airplane_ticket,
                  text: 'Deals',
                ),
                InvisibleBox(
                  icon: Icons.wallet,
                  text: 'FavePay',
                ),
                InvisibleBox(
                  icon: Icons.credit_card,
                  text: 'eCards',
                ),
                InvisibleBox(
                  icon: Icons.more,
                  text: 'More',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CarouselSlider(
              items: [
                'assets/images/banner1.jpg',
                'assets/images/banner2.jpg',
                'assets/images/banner3.jpg',
              ].map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(
                            8.0), // Adjust the value as needed
                      ),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(10.0), // Same value as above
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 140.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text("Fever Highlights!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  Spacer(),
                  Text(
                    "See more",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    FeverCard(
                      icon: Icons.monetization_on,
                      title: 'BBQ TOWN',
                      subtitle: '[11.11](Sat-Sun)',
                    ),
                    FeverCard(
                      icon: Icons.percent,
                      title: 'Mid Valley',
                      subtitle: '[12.11](Sat-Sun)',
                    ),
                    FeverCard(
                      icon: Icons.airplane_ticket,
                      title: 'IOi Putrajaya',
                      subtitle: '[13.11](Sat-Sun)',
                    ),
                    FeverCard(
                      icon: Icons.airplane_ticket_outlined,
                      title: 'Cyberjaya',
                      subtitle: '[14.11](Sat-Sun)',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
