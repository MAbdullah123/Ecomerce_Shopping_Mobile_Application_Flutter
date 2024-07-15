import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/explore.dart';

class bag extends StatefulWidget {
  const bag({Key? key}) : super(key: key);

  @override
  State<bag> createState() => _bagState();
}

class _bagState extends State<bag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(2.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 650.0, // Adjust height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/banner4.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    iconTheme: IconThemeData(color: Colors.white),
                    actions: [
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => explore(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 10,
                  child: Text(
                    'Leather bag',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black54,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 10,
                  child: Text(
                    'RS200000',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black54,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.all(1.0),
              padding: const EdgeInsets.all(1.0),
              color: Color.fromARGB(255, 182, 179, 171),
              width: double.infinity,
              child: const Text(
                'Holiday Sale',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 100,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSlideItem('This Weeknd gonna be 60% OFF !!'),
                  _buildSlideItem('Surprises for you this Weeknd !!'),
                  _buildSlideItem('Eid Special Coming Soon !!'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildSlideItem(String title) {
  return Card(
    elevation: 4, // Adjust elevation for the shadow effect
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Stack(
      children: [
        Container(
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
          bottom: 00,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 48, 67, 53).withOpacity(0.7),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    ),
  );
}
