import 'dart:async';
import 'package:e_cook/main_navigation.dart';
import 'package:flutter/material.dart';
import 'package:e_cook/Pages/sign_in_page.dart';

class SlpashScreen extends StatefulWidget {
  const SlpashScreen({super.key});

  @override
  State<SlpashScreen> createState() => _SlpashScreenState();
}

class _SlpashScreenState extends State<SlpashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), _checkSession);
  }

  void _checkSession() {
    bool isLoggedIn = true; // Change ça à true pour tester MainNavigation
    // Quand tu auras branché la vraie base de données ou l’authentification,
    // il suffira de remplacer *true* par **false**

    if (isLoggedIn) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => MainNavigation()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => SignInPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'assets/profil/bg.png',
                fit: BoxFit.cover,
                width: screenWidth,
                height: screenHeight,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 110),
                    child: Column(
                      children: [
                        Image.asset('assets/profil/icon1.png'),
                        const SizedBox(height: 20),
                        const Text(
                          '100K+ Premium Recipe',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Column(
                    children: const [
                      SizedBox(
                        width: 275,
                        child: Text(
                          'Get Cooking',
                          style: TextStyle(
                            height: 1.3,
                            fontFamily: 'poppins',
                            fontSize: 55,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Simple way to find Tasty Recipe',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 150),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
