import 'package:flutter/material.dart';
import 'package:food_delivery_app/consts/consts.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _pwdcontroller = TextEditingController();
  TextEditingController _confirmpwdcontroller = TextEditingController();
  bool isPassword = true;
  bool isCpassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Name text
            CustomText(
              text: "Full Name",
              color: Colors.grey,
              fontSize: 15,
            ),
            /// Name Textfield
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Dosa Marvis",
                enabled: true,
                focusedBorder: UnderlineInputBorder(),
                focusColor: Colors.black,
              ),
              cursorColor: blackcolor,
              controller: _namecontroller,
            ),
            10.heightBox,

            /// email text
            const CustomText(
              text: "Email address",
              color: Colors.grey,
              fontSize: 15,
            ),

            /// Email Textfield
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Dosamarvis@gmail.com",
                enabled: true,
                focusedBorder: UnderlineInputBorder(),
                focusColor: Colors.black,
              ),
              cursorColor: blackcolor,
              controller: _emailcontroller,
            ),

            10.heightBox,

            /// password Text
            const CustomText(
              text: "Password",
              color: Colors.grey,
              fontSize: 15,
            ),

            /// Password TextField
            TextFormField(
              obscureText: isPassword,
              decoration: InputDecoration(
                hintText: "******",
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  child: Icon(
                    isPassword
                        ? Icons.remove_red_eye_outlined
                        : Icons.visibility_off_outlined,
                    color: Colors.grey,
                  ),
                ),
                enabled: true,
                focusedBorder: const UnderlineInputBorder(),
                focusColor: Colors.black,
              ),
              controller: _pwdcontroller,
              cursorColor: blackcolor,
            ),

            /// Confirm password Text
            10.heightBox,
            CustomText(
              text: "Confirm Password",
              color: Colors.grey,
              fontSize: 15,
            ),

            /// Confirm Password Textfield
            TextFormField(
              obscureText: isCpassword,
              decoration: InputDecoration(
                hintText: "******",
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isCpassword = !isCpassword;
                    });
                  },
                  child: Icon(
                    isCpassword
                        ? Icons.remove_red_eye_outlined
                        : Icons.visibility_off_outlined,
                    color: Colors.grey,
                  ),
                ),
                enabled: true,
                focusedBorder: const UnderlineInputBorder(),
                focusColor: Colors.black,
              ),
              controller: _confirmpwdcontroller,
              cursorColor: blackcolor,
            ),
            5.heightBox,
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Already have an account?",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: "Login",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold))
                    ]),
              ]),
            ),
            40.heightBox,
            MyButton(
              onTap: () {},
              containerColor: Maincolor,
              text: "Sign-Up",
              height: 50,
              width: double.infinity,
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w500,
              circularRadius: BorderRadius.circular(17),
            )
          ],
        ),
      ),
    );
  }
}
