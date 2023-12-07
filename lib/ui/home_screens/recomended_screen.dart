import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/home_screens/promo_screen.dart';
import 'package:food_delivery_app/ui/home_screens/rating_products.dart';
import 'package:food_delivery_app/ui/home_screens/rec_Screen.dart';

import '../../consts/consts.dart';
import '../../models/home_model.dart';
import '../../widgets/custom_text.dart';

class RecomScreen extends StatefulWidget {
  RecomScreen({super.key});

  @override
  State<RecomScreen> createState() => _RecomScreenState();
}
bool textchange = false;

class _RecomScreenState extends State<RecomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            size: 24,
          ),
        ),
        title: const CustomText(
          text: "Recommended",
          fontWeight: FontWeight.w500,
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 27,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: DefaultTabController(
        length: 4,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 70,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  child: TabBar(
                    onTap: (value) {
                      textchange != textchange;
                    },
                    physics: BouncingScrollPhysics(),
                    isScrollable: true,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Maincolor
                      ),
                      dividerColor: Colors.transparent,
                      labelColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Text('Promo'),
                        Text('Recommended'),
                        Text('Ratings'),
                  ]),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  physics: BouncingScrollPhysics(),
                    children: [
                  PromoScreen(),
                  RcScreen(),
                  RatingProduct(),
                ]),
              ),
              const SizedBox( height: 130),
              // Container(
              //   height: 520,
              //   width: double.infinity,
              //   child: GridView.builder(
              //     shrinkWrap: true,
              //     itemCount: food1.length,
              //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //           crossAxisCount: 2,
              //         crossAxisSpacing: 5,
              //         childAspectRatio: 1/2,
              //         mainAxisExtent: 240
              //       ),
              //       itemBuilder: (context, index) => Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 5),
              //         child: Column(
              //           children: [
              //             Container(
              //                   height: 230,
              //                   width: 170,
              //                   child: Stack(
              //                     children: [
              //                       Align(
              //                         alignment: Alignment.center,
              //                         child: Container(
              //                           height: 190,
              //                           width: 150,
              //                           decoration: BoxDecoration(
              //                             borderRadius: BorderRadius.circular(15),
              //                             color: Colors.grey.shade200,
              //                           ),
              //                         ),
              //                       ),
              //                       Column(
              //                         children: [
              //                           Container(
              //                             height: 100,
              //                             width: 100,
              //                             decoration: BoxDecoration(
              //                                 image: DecorationImage(
              //                                     image: food1[index].image)),
              //                           ),
              //                           CustomText(
              //                             text: food1[index].titletext,
              //                             fontSize: 14,
              //                           ),
              //                           const SizedBox(
              //                             height: 10,
              //                           ),
              //                           CustomText(
              //                             text: food1[index].distext,
              //                             fontSize: 11,
              //                           ),
              //                           const SizedBox(
              //                             height: 10,
              //                           ),
              //                           CustomText(
              //                             fontSize: 16,
              //                             fontWeight: FontWeight.bold,
              //                             text: food1[index].price,
              //                           ),
              //                           const SizedBox(
              //                             height: 10,
              //                           ),
              //                           Align(
              //                             alignment: Alignment.bottomCenter,
              //                             child: Container(
              //                               height: 30,
              //                               width: 30,
              //                               decoration: const BoxDecoration(
              //                                   image: DecorationImage(
              //                                       image: AssetImage(Icbag2)),
              //                                   shape: BoxShape.circle,
              //                                   color: Colors.amber),
              //                             ),
              //                           ),
              //                         ],
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //           ],
              //         ),
              //       ),),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // List<dynamic> food1 = [
  //   HomescreenModel(
  //     image: const AssetImage(imgNoodles),
  //     titletext: "Yakisoba Noodles",
  //     distext: 'Noodle with Pork',
  //     price: '1000 PKR',
  //   ),
  //   HomescreenModel(
  //     image: const AssetImage(imgNoodles),
  //     titletext: "Yakisoba Noodles",
  //     distext: 'Noodle with Pork',
  //     price: '1000 PKR',
  //   ),
  //   HomescreenModel(
  //     image: const AssetImage(imgNoodles),
  //     titletext: "Yakisoba Noodles",
  //     distext: 'Noodle with Pork',
  //     price: '1000 PKR',
  //   ),
  //   HomescreenModel(
  //     image: const AssetImage(imgNoodles),
  //     titletext: "Yakisoba Noodles",
  //     distext: 'Noodle with Pork',
  //     price: '1000 PKR',
  //   ),
  //   HomescreenModel(
  //     image: const AssetImage(imgNoodles),
  //     titletext: "Yakisoba Noodles",
  //     distext: 'Noodle with Pork',
  //     price: '1000 PKR',
  //   ),
  // ];
}
