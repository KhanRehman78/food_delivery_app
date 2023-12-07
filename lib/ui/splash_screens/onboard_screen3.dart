import 'package:flutter/material.dart';

import '../../consts/consts.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
class Onboard3 extends StatefulWidget {
  const Onboard3({super.key});

  @override
  State<Onboard3> createState() => _Onboard3State();
}

class _Onboard3State extends State<Onboard3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgOnboard3,), fit: BoxFit.cover)
                ),
              ),
              80.heightBox,
              const CustomText(
                text: "Wide range of food"
                    "\ncategories and more",
                fontWeight: FontWeight.bold,
                fontSize: 27,
              ),
              15.heightBox,
              const CustomText(
                text:
                "Browse through our extensive list of  restaurants and dishes,"
                    " and when you're ready  to order, simply add your desired"
                    " items to your  cart "
                    "and checkout. It's that easy!",
              ),
              90.heightBox,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: const CustomText(
                        text: "Skip",
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    MyButton(onTap: () {
                      setState(() {  });
                    },
                      height: 50,
                      width: 140,
                      containerColor: Maincolor,
                      text: "continue",
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      circularRadius: BorderRadius.circular(13),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
