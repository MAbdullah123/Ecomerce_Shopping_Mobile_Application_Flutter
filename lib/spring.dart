import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/bag.dart';
import 'package:flutter_application_ecommerce/tops.dart';

class spring extends StatefulWidget {
  const spring({Key? key}) : super(key: key);

  @override
  State<spring> createState() => _springState();
}

class _springState extends State<spring> {
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
                      height: 300.0, // Adjust height as needed
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/wc.jpg'),
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
                          color: Colors
                              .white, // Change icon color to match your theme
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => tops(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 40,
                  child: Text(
                    'Spring Collections',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 39,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 05),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSlideItem('assets/s1.jpg'),
                  _buildSlideItem('assets/s2.jpg'),
                  _buildSlideItem('assets/s3.jpg'),
                  // Add more items as needed
                ],
              ),
            ),
            SizedBox(height: 05),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSlideItem('assets/s4.jpg'),
                  _buildSlideItem('assets/s5.jpg'),
                  _buildSlideItem('assets/s6.jpg'),
                  // Add more items as needed
                ],
              ),
            ),
            SizedBox(height: 05),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSlideItem('assets/s7.jpg'),
                  _buildSlideItem('assets/s8.jpg'),
                  _buildSlideItem('assets/s9.jpg'),
                  // Add more items as needed
                ],
              ),
            ),
            SizedBox(height: 05),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSlideItem('assets/s10.jpg'),
                  _buildSlideItem('assets/s11.jpg'),
                  _buildSlideItem('assets/s12.jpg'),
                  // Add more items as needed
                ],
              ),
            ),
            SizedBox(height: 05),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSlideItem('assets/s13.jpg'),
                  _buildSlideItem('assets/s14.jpg'),
                  _buildSlideItem('assets/s20.jpg'),
                  // Add more items as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildSlideItem(String imagePath) {
  return Card(
    elevation: 4, // Adjust elevation for the shadow effect
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Container(
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
