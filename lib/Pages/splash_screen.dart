import 'package:e_cook/Pages/sign_in_page.dart';
import 'package:flutter/material.dart';

class SlpashScreen extends StatefulWidget {
  const SlpashScreen({super.key});

  @override
  State<SlpashScreen> createState() => _SlpashScreenState();
}

class _SlpashScreenState extends State<SlpashScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              ClipRRect(
                child: Image.asset(
                  // Image de fond
                  'assets/profil/bg.png',
                  fit: BoxFit.cover,
                  width: screenWidth,
                  height: screenHeight,
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 110),
                    child: Column(
                      children: [
                        Image.asset('assets/profil/icon1.png'),
                        SizedBox(height: 20),
                        Text(
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
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          // fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  //
                  SizedBox(height: 60),
                  //
                  InkWell(
                    onTap: () {
                      setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()),
                      );
                    },

                    child: Container(
                      width: screenWidth * .65,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff129575),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Start Cooking',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 12),
                          Icon(
                            Icons.arrow_forward,
                            size: 18,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                  SizedBox(height: 90),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
