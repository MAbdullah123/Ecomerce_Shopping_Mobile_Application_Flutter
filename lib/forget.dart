import 'package:flutter/material.dart';
import 'package:flutter_application_ecommerce/code.dart';
import 'package:flutter_application_ecommerce/forget.dart';
import 'package:flutter_application_ecommerce/login.dart';

class forget extends StatefulWidget {
  const forget({Key? key}) : super(key: key);

  @override
  State<forget> createState() => _forgetState();
}

class _forgetState extends State<forget> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  builder: (context) => code(),
                ),
              );
            },
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              left: 10.0,
            ), // Adjust padding as needed
            child: Text(
              'Forget Password ?',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 50.0),
          Container(
            width: 270, // Adjusted width of the "Send" button
            child: ElevatedButton(
              onPressed: () {
                // Implement your forget password logic here
                String phoneNumber = _phoneController.text;
                // Use the phone number to send a password reset request
              },
              child: const Text(
                "Send",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 0, 2, 4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
