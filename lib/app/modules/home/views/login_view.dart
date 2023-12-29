import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/app/modules/home/controllers/auth_controller.dart';

import '../../../routes/app_pages.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);
  State<LoginView> createState() => _LoginViewState();
}

_LoginViewState createState() => _LoginViewState();

class _LoginViewState extends State<LoginView> {
  final AuthController _authController = Get.put(AuthController());
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'), // Ganti judul AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 16),
            Obx(() {
              return ElevatedButton(
                onPressed: _authController.isLoading.value
                    ? null
                    : () async {
                        await _authController.loginUser(
                          _emailController.text,
                          _passwordController.text,
                        );

                        // Setelah login berhasil, navigasi ke halaman beranda
                        if (!_authController.isLoading.value) {
                          Get.offNamed(Routes.home_screen_view);
                        }
                      },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // Warna coklat
                ).copyWith(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: _authController.isLoading.value
                    ? CircularProgressIndicator()
                    : Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white, // Warna teks putih
                        ),
                      ),
              );
            }),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Tambahkan jarak dari tombol Login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You don't have an account yet?",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.HOME);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
