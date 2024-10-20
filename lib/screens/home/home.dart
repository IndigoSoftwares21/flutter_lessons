import 'package:flutter/material.dart';
import 'package:lesson_1/widgets/button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                Image.asset(
                  "assets/images/logo.png",
                  width: 140,
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppButton(
                  backgroundColor: Color(0xff1E232C),
                  label: "Login",
                  borderColor: Color(0xff1E232C),
                  labelColor: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppButton(
                  backgroundColor: Colors.white,
                  label: "Register",
                  borderColor: Color(0xff1E232C),
                  labelColor: Color(0xff1E232C),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Continue as a guest",
                    style: TextStyle(
                      color: Color(0xFF35C2C1),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
