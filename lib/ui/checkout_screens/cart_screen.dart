import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/consts/colors.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/widgets/custom_button.dart';

import '../../widgets/custom_text.dart';

class CartScreen extends StatefulWidget {
   CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
int _itemcount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 28,
        ),
        title: Text(
          "My cart",
          style: TextStyle(
              color: blackcolor, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search,color: blackcolor,size: 28,),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(

            children: [
              10.heightBox,
              // ListView
              SizedBox(
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 91,
                          width: 91,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/noodles.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: "Yakisoba Noodles",
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                              CustomText(
                                text: "Noodle with Pork",
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              CustomText(
                                fontSize: 12,
                                text: "PKR 560",
                                color: Colors.grey,
                              ),
                              7.heightBox,
                              Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(width: 1, color: Maincolor)
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          if
                                            (_itemcount > 0 ) {
                                            (_itemcount-- );
                                          } else{
                                            ( _itemcount == _itemcount);
                                          }
                                        });
                                      },
                                      child: Icon(

                                        Icons.remove,
                                        size: 16,
                                        color: Maincolor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(_itemcount.toString()),
                                  3.widthBox,
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(width: 1, color: Maincolor)
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          (_itemcount != 0, _itemcount++, _itemcount);
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 16,
                                        color: Maincolor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),),
              ),


            ],
          ),
        ),

      ),
    );
  }
}
