import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true, // Enables the back arrow
        centerTitle: true,
        title: const Text(
          "Quên mật khẩu",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Center(
              child: Container(
                width: 150,
                height: 150,
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  "assets/logohust.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Email Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Email *',
                labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.blue[50],
              ),
            ),
            const SizedBox(height: 20),

            // Reset Password Button
            ElevatedButton.icon(
              onPressed: () {
                // Reset password functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                shadowColor: Colors.black,
                elevation: 10,
                fixedSize: const Size(180, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              icon: const Icon(Icons.send, color: Colors.white),
              label: const Text(
                'Gửi yêu cầu',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            // Back to Login Link
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to LoginScreen
              },
              child: const Text(
                'Quay lại đăng nhập',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
