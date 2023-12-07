import 'package:flutter/material.dart';

import '../../consts/consts.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _pwdcontroller = TextEditingController();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Email address",
            color: Colors.grey,
            fontSize: 15,
          ),
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
          25.heightBox,
          const CustomText(
            text: "Password",
            color: Colors.grey,
            fontSize: 15,
          ),
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
          10.heightBox,
          const CustomText(text: "Forgot Passcode?",color: Maincolor,fontSize: 18,),
          60.heightBox,
          MyButton(onTap: (){},
            containerColor: Maincolor,
            text: "Login",
            height: 50,
            width: double.infinity,
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.bold,
            circularRadius: BorderRadius.circular(17),
          )
        ],
      ),
    );
  }
}
