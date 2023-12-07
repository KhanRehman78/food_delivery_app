import 'package:flutter/material.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/ui/auth_screens/login_page.dart';
import 'package:food_delivery_app/ui/auth_screens/signup_screen.dart';
import 'package:food_delivery_app/widgets/custom_button.dart';
import 'package:food_delivery_app/widgets/custom_text.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _pwdcontroller = TextEditingController();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 342,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imgChef2)),
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(28),
                        bottomRight: Radius.circular(28)),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(3, 2),
                          color: Colors.black26,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 28)
                    ]
                ),
                child:  const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor: Maincolor,
                        indicatorWeight: 3,
                        tabs: [
                      SizedBox(
                        height: 50,width: 120,
                        child: Center(
                          child: Text('Login',style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,fontWeight: FontWeight.w600)),
                        ),
                      ),
                      SizedBox(
                        height: 55,width: 120,
                        child: Center(
                          child: Text('SignUp',style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,fontWeight: FontWeight.w600)),
                        ),
                      ),

                    ])
                  ],
                ),
              ),
              30.heightBox,
              SizedBox(
                height: 350,
                width: MediaQuery.of(context).size.width,
                child: TabBarView(children: [
                 LoginPage(),
                  SignupScreen(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
