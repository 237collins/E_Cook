import 'package:e_cook/Pages/home_page.dart';
import 'package:e_cook/Pages/sign_in_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // Fonction pour afficher le SnackBar
  void showSuccessSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Création réussie!'),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool accepted = false;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create an acount,',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    'Let\'s help you set up your account, it won\'t take long.',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            //
            SizedBox(height: 20),

            // Formulaire
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Name section
                  Text(
                    'User Name',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: userNameController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xffd9d9d9)),
                      ),
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  // Email section
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xffd9d9d9)),
                      ),
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Email';
                      }
                      return null;
                    },
                  ),
                  //
                  SizedBox(height: 20),
                  // Password
                  Text(
                    'Enter Password',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xffd9d9d9)),
                      ),
                      //
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  // Confirm Password
                  Text(
                    'Confirm Password',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xffd9d9d9)),
                      ),
                      //
                      hintText: 'Retype Password',
                      hintStyle: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the same Password';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            //
            SizedBox(height: 10),

            // Lien a faire ici

            // Text.rich(
            //   TextSpan(
            //     text:'', children: [TextSpan(
            //       text: 'Forgot password?', style: TextStyle(
            //         fontSize: 11,
            //         color: Color(0xffff9c00),
            //         fontWeight: FontWeight.w600,
            //       ), recognizer: TapGestureRecognizer()..onTap = {
            //         Navigator.push(context, MaterialPageRoute(builder: (context)=> page()))
            //       }
            //     )])),
            GestureDetector(
              onTap: () {
                setState(() {
                  accepted = !accepted;
                });
              },
              child: Row(
                children: [
                  // SizedBox(width: 12),
                  Checkbox(
                    value: accepted,
                    onChanged: (bool? value) {
                      setState(() {
                        accepted = value ?? false;
                      });
                    },
                    side: BorderSide(color: Color(0xffff9c00)),
                    activeColor: Color(0xffff9c00),
                    checkColor: Color(0xffd9d9d9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'J\'accepte les termes & Conditions',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffff9c00),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            // Sign Up Bouton
            InkWell(
              onTap: () {
                setState(() {});
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18),
                decoration: BoxDecoration(
                  color: Color(0xff129575),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 40),
                    Icon(Icons.arrow_forward, size: 18, color: Colors.white),
                  ],
                ),
              ),
            ),
            //
            SizedBox(height: 20),
            Align(
              alignment: Alignment(0, 0),
              child: SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 90,
                      height: 1,
                      decoration: BoxDecoration(color: Color(0xffd9d9d9)),
                    ),
                    Text(
                      'Or Sign in With',
                      style: TextStyle(fontSize: 11, color: Color(0xffd9d9d9)),
                    ),
                    Container(
                      width: 90,
                      height: 1,
                      decoration: BoxDecoration(color: Color(0xffd9d9d9)),
                    ),
                  ],
                ),
              ),
            ),
            //
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x1a696969),
                        offset: Offset(0, 0),
                        spreadRadius: 3,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/icons/google.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 50), // Espacement des icones
                Container(
                  width: 45,
                  height: 45,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x1a696969),
                        offset: Offset(0, 0),
                        spreadRadius: 3,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/icons/facebook.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            //
            SizedBox(height: 20),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already a member?',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 8),
                InkWell(
                  onTap: () {
                    setState(() {});
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInPage()),
                    );
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 11,
                      color: Color(0xffff9c00),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
