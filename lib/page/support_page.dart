import 'package:flutter/material.dart';
import 'package:test_ide/screen/contact_screen.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cách thức liên hệ', style: TextStyle(color: Color(0xFFC41E3A)),),
      ),
      body: Container(
        color: Colors.grey.shade200, // Set a light gray background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ContactScreen()),
                  );
                  print("Contact Us tapped");
                },
                child: Column(
                  children: const [
                    Icon(
                      Icons.contact_phone,
                      size: 60,
                      color: Colors.black87,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Contact Us',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Divider(color: Colors.black38),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Add navigation or action for "Messages"
                  print("Messages tapped");
                },
                child: Column(
                  children: const [
                    Icon(
                      Icons.support_agent,
                      size: 60,
                      color: Colors.black87,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Messages',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
