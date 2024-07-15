import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/create.dart';
import 'package:flutter_application_ecommerce/login.dart';
import 'package:flutter_application_ecommerce/shop.dart';

class shop extends StatefulWidget {
  const shop({Key? key}) : super(key: key);

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 40,
            color: Colors.black87, // Change icon color to match your theme
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_forward,
              size: 40,
              color: Colors.black87, // Change icon color to match your theme
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => create(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ), // Adjust padding as needed
            child: Text(
              'Shop your favourites',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'It show you more assessories',
            style: TextStyle(color: Colors.black87, fontSize: 25),
          ),
          SizedBox(height: 40),
          Container(
            height: 350,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildSlideItem('assets/as1.jpg'),
                _buildSlideItem('assets/as3.jpg'),
                _buildSlideItem('assets/as2.jpg'),
                // Add more items as needed
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Positioned(
            bottom: 0.0, // Adjust the value to position the button vertically
            left: MediaQuery.of(context).size.width / 2 -
                120, // Adjust the value to position the button horizontally
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => shop(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromARGB(255, 26, 26, 26), // Change button color here
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 2.0,
                ),
              ),
              child: Text(
                'Start Shopping',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Already have an Account? Sign In',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSlideItem(String imagePath) {
    return Card(
      elevation: 4, // Adjust elevation for the shadow effect
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 300,
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
}
