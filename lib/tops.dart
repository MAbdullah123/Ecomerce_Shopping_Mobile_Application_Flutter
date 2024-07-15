import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/cotton.dart';
import 'package:flutter_application_ecommerce/spring.dart';

class tops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              size: 30,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => cotton(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Womens Tops',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 05),
            Container(
              height: 280,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSlideItem('assets/o1.jpg'),
                  _buildSlideItem('assets/o2.jpg'),
                  _buildSlideItem('assets/o3.jpg'),
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
                  _buildSlideItem('assets/o4.jpg'),
                  _buildSlideItem('assets/o5.jpg'),
                  _buildSlideItem('assets/o6.jpg'),
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
                  _buildSlideItem('assets/o7.jpg'),
                  _buildSlideItem('assets/o8.jpg'),
                  _buildSlideItem('assets/o9.jpg'),
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
                  _buildSlideItem('assets/o10.jpg'),
                  _buildSlideItem('assets/o11.jpg'),
                  _buildSlideItem('assets/o12.jpg'),
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
                  _buildSlideItem('assets/o13.jpg'),
                  _buildSlideItem('assets/o14.jpg'),
                  _buildSlideItem('assets/o15.jpg'),
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
                  _buildSlideItem('assets/o16.jpg'),
                  _buildSlideItem('assets/o17.jpg'),
                  _buildSlideItem('assets/o18.jpg'),
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
