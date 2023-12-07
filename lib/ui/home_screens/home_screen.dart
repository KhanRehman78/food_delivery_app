import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:food_delivery_app/consts/colors.dart';
import 'package:food_delivery_app/ui/auth_screens/login_screen.dart';
import 'package:food_delivery_app/widgets/custom_container.dart';
import 'package:food_delivery_app/widgets/custom_text.dart';

import '../../consts/consts.dart';
import '../../models/home_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: DrawerScreen(
        setIndex: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      mainScreen: currentScreen(),
      borderRadius: 30,
      showShadow: true,
      angle: 0.0,
      slideWidth: 268,
      menuBackgroundColor: Maincolor,
    );
  }

  Widget currentScreen() {
    switch (currentIndex) {
      case 0:
        return HomeScreen(
          title: "Profile",
        );
      case 1:
        return HomeScreen(
          title: "Order",
        );
      case 2:
        return HomeScreen(
          title: "Offer and Promo",
        );
      case 3:
        return HomeScreen(
          title: "privacy policy",
        );
      case 4:
        return HomeScreen(
          title: "Setting",
        );
      case 5:
        return HomeScreen(
          title: "Signout",
        );
      default:
        return HomeScreen();
    }
  }
}

class HomeScreen extends StatefulWidget {
  final String title;

  const HomeScreen({Key? key, this.title = "Home"}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final TextEditingController _searchcontroller = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              fontWeight: FontWeight.w500,
              fontSize: 19,
              text: "Hello,Marchelle",
            ),
            CustomText(
              text: "Kohat, Pakistan",
              color: Colors.grey,
              fontSize: 15,
            ),
          ],
        ),
        actions: [
          // Notification Icon
          IconButton(
            onPressed: () {},
            icon: Container(
              width: 22,
              height: 30,
              decoration: const BoxDecoration(
                  color: appcolor,
                  image: DecorationImage(
                      image: AssetImage(Icnotification), fit: BoxFit.contain),
                  shape: BoxShape.circle),
            ),
          ),
          // cart Icon
          IconButton(
            onPressed: () {},
            icon: Container(
              width: 24,
              height: 30,
              decoration: const BoxDecoration(
                  color: appcolor,
                  image: DecorationImage(
                      image: AssetImage(Icbag), fit: BoxFit.contain),
                  shape: BoxShape.circle),
            ),
          ),
        ],
        centerTitle: true,
        leading: DrawerWidget(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.heightBox,
                // container design
                const CustomContainer(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: '#eatwelleveryday', color: Colors.white),
                        CustomText(
                            text: 'Do you have a 70% \noff meal coupon!',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17),
                        CustomText(
                            text: 'Promo period 4 - 28 Apr 2023',
                            fontWeight: FontWeight.w900,
                            fontSize: 9,
                            color: Maincolor),
                      ],
                    ),
                  ),
                ),
                10.heightBox,
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.80,
                        child: SearchBar(
                          overlayColor:
                              MaterialStateProperty.all(Colors.grey.shade700),
                          hintStyle: MaterialStateProperty.all(
                              const TextStyle(color: Colors.grey)),
                          hintText: "Find what you want...",
                          elevation: MaterialStateProperty.all(1),
                          backgroundColor: MaterialStateProperty.all(appcolor),
                          controller: _searchcontroller,
                          leading: const Icon(
                            Icons.search,
                            color: Maincolor,
                          ),
                        ),
                      ),
                      1.widthBox,
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(Icfilter)),
                            color: Colors.grey.shade100,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                19.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(children: [
                    const CustomText(
                      text: "Special offer",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const CustomText(
                        text: "See more",
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Maincolor,
                      ),
                    ),
                  ]),
                ),
                10.heightBox,
                // list special offer
                Container(
                  height: 230,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: food1.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: 170,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 180,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: food1[index].image)),
                                ),
                                CustomText(
                                  text: food1[index].titletext,
                                  fontSize: 14,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                  text: food1[index].distext,
                                  fontSize: 11,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  text: food1[index].price,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(Icbag2)),
                                        shape: BoxShape.circle,
                                        color: Colors.amber),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                19.heightBox,
                Row(
                  children: [
                    CustomText(
                      text: "Recommended for you",
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                    Spacer(),
                    CustomText(
                      fontWeight: FontWeight.bold,
                      color: Maincolor,
                      text: "See more",
                    ),
                  ],
                ),
                10.heightBox,
                // ListView 2
                Container(
                  height: 230,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: food1.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 230,
                        width: 170,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 190,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey.shade200,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: food1[index].image)),
                                ),
                                CustomText(
                                  text: food1[index].titletext,
                                  fontSize: 14,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                  text: food1[index].distext,
                                  fontSize: 11,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  text: food1[index].price,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(Icbag2)),
                                        shape: BoxShape.circle,
                                        color: Colors.amber),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<dynamic> food1 = [
    HomescreenModel(
      image: AssetImage(imgNoodles),
      titletext: "Yakisoba Noodles",
      distext: 'Noodle with Pork',
      price: '1000 PKR',
    ),
    HomescreenModel(
      image: AssetImage(imgNoodles),
      titletext: "Yakisoba Noodles",
      distext: 'Noodle with Pork',
      price: '1000 PKR',
    ),
    HomescreenModel(
      image: AssetImage(imgNoodles),
      titletext: "Yakisoba Noodles",
      distext: 'Noodle with Pork',
      price: '1000 PKR',
    ),
    HomescreenModel(
      image: AssetImage(imgNoodles),
      titletext: "Yakisoba Noodles",
      distext: 'Noodle with Pork',
      price: '1000 PKR',
    ),
    HomescreenModel(
      image: AssetImage(imgNoodles),
      titletext: "Yakisoba Noodles",
      distext: 'Noodle with Pork',
      price: '1000 PKR',
    ),
  ];
}

class DrawerScreen extends StatefulWidget {
  final ValueSetter setIndex;

  const DrawerScreen({Key? key, required this.setIndex}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Maincolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Icon(
                Icons.arrow_back,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
          70.heightBox,
          // profile text
          Row(
            children: [
              20.widthBox,
              Image.asset(
                Icprofile,
              ),
              9.widthBox,
              CustomText(
                color: Colors.white,
                text: "profile",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              )
            ],
          ),
          SizedBox(
            child: Divider(
              color: Colors.white,
              indent: 55,
              endIndent: 8,
            ),
          ),
          // order text,
          Row(
            children: [
              20.widthBox,
              Image.asset(
                Icorder,
              ),
              9.widthBox,
              CustomText(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                text: "Order",
                fontSize: 18,
              )
            ],
          ),
          SizedBox(
            child: Divider(
              color: Colors.white,
              indent: 55,

            ),
          ),
          // promo text
          Row(
            children: [
              20.widthBox,
              Image.asset(
                Icpromo,
              ),
              9.widthBox,
              CustomText(
                color: Colors.white,
                text: "Offer and promo",
                fontWeight: FontWeight.w600,
                fontSize: 18,
              )
            ],
          ),
          SizedBox(
            child: Divider(
              color: Colors.white,
              indent: 55,
            ),
          ),
          // privacy text
          Row(
            children: [
              20.widthBox,
              Image.asset(
                Icprivacy,
              ),
              9.widthBox,
              CustomText(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                text: "privacy policy",
                fontSize: 18,
              )
            ],
          ),
          SizedBox(
            child: Divider(
              color: Colors.white,
              indent: 55
            ),
          ),
          // security text
          Row(
            children: [
              20.widthBox,
              Image.asset(
                Icsecurity,
              ),
              9.widthBox,
              CustomText(
                text: "Security",
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.white,
              )
            ],
          ),

          140.heightBox,
          // signout button
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: CustomText(
                  text: "Sign-out",
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (GestureDetector(
      onTap: () {
        ZoomDrawer.of(context)!.toggle();
      },
      child: Container(
        width: 75,
        height: 73,
        decoration: const BoxDecoration(
            color: Maincolor,
            image:
                DecorationImage(image: AssetImage(profile), fit: BoxFit.fill),
            shape: BoxShape.circle),
      ),
    ));
  }
}
