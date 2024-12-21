import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isObscure = true;

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
          "Đăng ký",
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

            // Name Field
            TextField(
              decoration: InputDecoration(
                labelText: 'Họ và tên *',
                labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.blue[50],
              ),
            ),
            const SizedBox(height: 20),

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

            // Password Field
            TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                labelText: 'Mật khẩu *',
                labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.blue[50],
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Confirm Password Field
            TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                labelText: 'Xác nhận mật khẩu *',
                labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.blue[50],
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Register Button
            ElevatedButton.icon(
              onPressed: () {
                // Register functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shadowColor: Colors.black, // Shadow color
                elevation: 10, // Shadow depth
                fixedSize: const Size(150, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              icon: const Icon(Icons.person_add, color: Colors.white),
              label: const Text(
                'Đăng ký',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            // Back to Login Link
            TextButton(
              onPressed: () {
                Navigator.pop(context);
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
