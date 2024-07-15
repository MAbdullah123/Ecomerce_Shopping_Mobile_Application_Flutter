import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/bag.dart';

class clothes extends StatefulWidget {
  const clothes({Key? key}) : super(key: key);

  @override
  State<clothes> createState() => _clothesState();
}

class _clothesState extends State<clothes> {
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
                          image: AssetImage('assets/banner3.jpg'),
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
                              builder: (context) => bag(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 80,
                  child: Text(
                    '20% OFF',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
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
                'Designer Collections',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
            ),
            SizedBox(height: 05),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSlideItem('assets/d1.jpg'),
                  _buildSlideItem('assets/d2.jpg'),
                  _buildSlideItem('assets/d3.jpg'),
                  // Add more items as needed
                ],
              ),
            ),
            SizedBox(
              height: 05,
            ),
            Container(
              margin: const EdgeInsets.all(1.0),
              padding: const EdgeInsets.all(1.0),
              color: Color.fromARGB(255, 182, 179, 171),
              width: double.infinity,
              child: const Text(
                'Top Trend Collections',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black87, fontSize: 30),
              ),
            ),
            SizedBox(height: 05),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSlideItem('assets/t1.jpg'),
                  _buildSlideItem('assets/t2.jpg'),
                  _buildSlideItem('assets/t3.jpg'),
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
