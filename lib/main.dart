import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/checkout_screens/myorder_screen.dart';
import 'package:food_delivery_app/ui/home_screens/home_screen.dart';
import 'package:food_delivery_app/ui/auth_screens/login_screen.dart';
import 'package:food_delivery_app/ui/checkout_screens/address_screen.dart';
import 'package:food_delivery_app/ui/checkout_screens/cart_screen.dart';
import 'package:food_delivery_app/ui/home_screens/filter-Screen.dart';
import 'package:food_delivery_app/ui/home_screens/promo_screen.dart';
import 'package:food_delivery_app/ui/home_screens/recomended_screen.dart';
import 'package:food_delivery_app/ui/home_screens/search_screen.dart';
import 'package:food_delivery_app/ui/home_screens/searchistory_screen.dart';
import 'package:food_delivery_app/ui/order_screens/edit_address.dart';
import 'package:food_delivery_app/ui/order_screens/notification_screen.dart';
import 'package:food_delivery_app/ui/order_screens/payment_Screen.dart';
import 'package:food_delivery_app/ui/splash_screens/onboard_screen1.dart';
import 'package:food_delivery_app/ui/splash_screens/onboard_screen2.dart';
import 'package:food_delivery_app/ui/splash_screens/onboard_screen3.dart';
import 'package:food_delivery_app/ui/splash_screens/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    //home: FirstScreen(),
    // home: FilterScreen(),
    //   home: CartScreen(),
    //   home: AddressScreen(),
    //   home: FirstScreen(),
    //   home: TrackorderScreen(),
    //   home: MainScreen(),
    //   home: LoginScreen(),
    //   home: Home(),
    //   home: PromoScreen(),
    //   home: PaymentScreen(),
    //   home: MyorderScreen(),
      home: EditScreen(),
    //   home: RecomScreen(),
    //   home: NotificationScreen(),
    );

  }
}

