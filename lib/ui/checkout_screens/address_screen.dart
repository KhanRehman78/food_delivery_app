import 'package:flutter/material.dart';
import 'package:food_delivery_app/consts/colors.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/widgets/custom_text.dart';
class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back,
          size: 22,),
        title: Text("Check out"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              text: "Delivery",
            ),
            // Address text
            Row(
              children: [
                CustomText(
                  fontSize: 19,
                  text: "Address details",
                  fontWeight: FontWeight.bold,
                ),
                Spacer(),
                CustomText(
                  color: Maincolor,
                  fontSize: 17,
                  text: "Change",
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            10.heightBox,
            
          ],
        ),
      ),
    );
  }
}
