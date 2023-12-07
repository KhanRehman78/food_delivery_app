import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/ui/checkout_screens/cart_screen.dart';
import 'package:food_delivery_app/widgets/custom_button.dart';
import 'package:food_delivery_app/widgets/custom_text.dart';
import 'package:geolocator/geolocator.dart';

class MyorderScreen extends StatefulWidget {
  const MyorderScreen({super.key});

  @override
  State<MyorderScreen> createState() => _MyorderScreenState();
}

bool istap = true;
bool select = true;
bool select2 = true;
bool select3 = true;
int _itemcount = 0;

class _MyorderScreenState extends State<MyorderScreen> {
  Position? _currentLocation;
  late bool servicepermission = false;
  late LocationPermission permission;

  Future<Position> getcurrentLocation() async {
    servicepermission = await Geolocator.isLocationServiceEnabled();
    if (!servicepermission) {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Order"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.orangeAccent,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.cancel_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image container
            Container(
              height: MediaQuery.of(context).size.height * 0.38,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
              child: Image.asset("assets/images/myfood.png"),
            ),
            SizedBox(
              height: 10,
            ),
            // text + favrt
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      8.widthBox,
                      CustomText(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        text: "Yakisoba Noodles",
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            istap = !istap;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 9.0),
                          child: Icon(
                            istap
                                ? Icons.favorite_border_outlined
                                : Icons.favorite,
                            size: 27,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      17.widthBox,
                      CustomText(
                        text: "1000,PKR",
                        color: Maincolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      8.widthBox,
                      Text(
                        "1300 PKR",
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  10.heightBox,
                  CustomText(
                    text: "Add more",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  // coke tile
                  Container(
                    height: 50,
                    child: ListTile(
                      leading: Image.asset(coke),
                      enabled: true,
                      title: CustomText(
                        text: "cold drink coca cola",
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            select = !select;
                          });
                        },
                        child: Icon(
                          select ? Icons.radio_button_off_outlined : Icons.radio_button_checked_rounded,
                          color: Maincolor,
                        ),
                      ),
                    ),
                  ),
                  4.heightBox,
                  // rice tile
                  Container(
                    height: 50,
                    child: ListTile(
                      leading: Image.asset(rice),
                      enabled: true,
                      title: CustomText(
                        text: "Prawn Fried Rice",
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            select2 = !select2;
                          });
                        },
                        child: Icon(
                          select2 ? Icons.circle_outlined : Icons.check_circle,
                          color: Maincolor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  3.heightBox,
                  CustomText(
                    text: "package",
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  )
                ],
              ),
            ),
            // package box tile
            Container(
              height: 50,
              child: ListTile(
                leading: Image.asset(box),
                enabled: true,
                title: CustomText(
                  text: "Package box cost",
                ),
                trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      select3 = !select3;
                    });
                  },
                  child: Icon(
                    select3 ? Icons.circle_outlined : Icons.check_circle,
                    color: Maincolor,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                // add remove
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    height: 45,
                    width: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.orangeAccent.shade100,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 17,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (_itemcount > 0) {
                                (_itemcount--);
                              } else {
                                (_itemcount == _itemcount);
                              }
                            });
                          },
                          child: Container(
                              height: 35,
                              width: 35,
                              child: Image(
                                image: AssetImage(minus),
                                fit: BoxFit.cover,
                              )),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        CustomText(
                          text: _itemcount.toString(),
                        ),
                        SizedBox(
                          width: 9,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              (_itemcount != 0, _itemcount++, _itemcount);
                            });
                          },
                          child: Container(
                              height: 35,
                              width: 35,
                              child: Image(
                                image: AssetImage(plus),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  // order button
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  // backgroundColor: Colors.grey,
                                  title: Image.asset(location),

                                  actionsAlignment: MainAxisAlignment.start,
                                  actions: [
                                    CustomText(
                                      text: "Enable Your Location",
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    CustomText(
                                      text: "Please allow to use your location "
                                          "to\nshow nearby restaurant on the map.",
                                      fontSize: 10,
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    MyButton(
                                        onTap: () async {
                                          _currentLocation =
                                              await getcurrentLocation();
                                          print("${_currentLocation}");
                                          if (getcurrentLocation ==
                                              getcurrentLocation) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        CartScreen()));
                                          }
                                        },
                                        fontSize: 18,
                                        circularRadius:
                                            BorderRadius.circular(18),
                                        width: 300,
                                        height: 50,
                                        containerColor: Maincolor,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        text: "Enable Location")
                                  ],
                                ));

                        print("object");
                      });
                    },
                    child: Container(
                      height: 45,
                      width: 145,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Maincolor),
                      child: Center(
                        child: CustomText(
                          text: "Order",
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
