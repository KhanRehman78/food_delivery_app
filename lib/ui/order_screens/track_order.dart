import 'package:flutter/material.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/widgets/custom_button.dart';
import 'package:food_delivery_app/widgets/custom_text.dart';
class TrackorderScreen extends StatelessWidget {
  const TrackorderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back,
          size: 22,),
      ),
        body: Column(
        children: [
          50.heightBox,
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imgOnboard2))
            ),
          ),
          48.heightBox,
          CustomText(
            text: "Your food in on the way.",
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          18.heightBox,
          CustomText(
            color: Colors.grey,
            fontSize: 14,
            text: "Thank you for your order you can track\n the delivery in order section.",
          ),
          18.heightBox,
          CustomText(
            text: "Est. Delivery Time: 24 min.",
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
          59.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: MyButton(
              onTap: (){},
              circularRadius: BorderRadius.circular(16),
              fontSize: 14,
               fontWeight: FontWeight.w600,
              color: Colors.white,
              containerColor: Maincolor,
              height: 50,
                width: double.infinity,
                text: "Track My Order"),
          )
        ],
    ),
    );
  }
}
