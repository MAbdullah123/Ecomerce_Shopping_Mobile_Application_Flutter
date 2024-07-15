import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/browse.dart';

class account_link extends StatefulWidget {
  const account_link({super.key});

  @override
  State<account_link> createState() => _account_linkState();
}

class _account_linkState extends State<account_link> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/banner2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color:
                      Colors.black87, // Change icon color to match your theme
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 30,
                    color:
                        Colors.black87, // Change icon color to match your theme
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            browse(), // Replace with your next page widget
                      ),
                    );
                  },
                ),
              ],
            ),
            body: Stack(
              children: [
                Positioned(
                  bottom:
                      140.0, // Adjust the value to position the button vertically
                  left: MediaQuery.of(context).size.width / 2 -
                      130, // Adjust the value to position the button horizontally
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => account_link(),
                        ),
                      );
                    },
                    icon: Image.asset(
                      'assets/glogo.png',
                      width: 40,
                      height: 38,
                    ),
                    label: Text(
                      'Sign Up With Gmail',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(
                          255, 0, 0, 0), // Change button color here
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 8.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom:
                      70.0, // Adjust the value to position the button vertically
                  left: MediaQuery.of(context).size.width / 2 -
                      145, // Adjust the value to position the button horizontally
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => account_link(),
                        ),
                      );
                    },
                    icon: Image.asset(
                      'assets/flogo.png',
                      width: 40,
                      height: 38,
                    ),
                    label: Text(
                      'Continue with Facebook',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(
                          255, 0, 0, 0), // Change button color here
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 8.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
