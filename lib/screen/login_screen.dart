import 'package:flutter/material.dart';
import 'package:test_ide/screen/forgot_password_screen.dart';
import 'package:test_ide/screen/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Đăng nhập",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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

            // Password Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password *',
                labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.blue[50],
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure
                        ? Icons.visibility
                        : Icons.visibility_off,
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
            const SizedBox(height: 10),

            // Forgot Password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()),
                  );
                },
                child: const Text(
                  'Quên mật khẩu ?',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Login Button
            ElevatedButton.icon(
              onPressed: () {
                // Login functionality here
              },
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.black, // Shadow color with opacity
                elevation: 10,
                fixedSize: Size(150, 50),
                backgroundColor: Colors.blue[900],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              label: const Text('Đăng nhập',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),

            const SizedBox(height: 20),

            // OR Divider
            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "hoặc",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(child: Divider()),
              ],
            ),

            const SizedBox(height: 20),

            // Register Button
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shadowColor: Colors.black, // Shadow color with opacity
                elevation: 10, // Increase for a more prominent shadow
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
            )
          ],
        ),
      ),
    );
  }
}
