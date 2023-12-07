import 'package:flutter/material.dart';

import '../../consts/consts.dart';
import '../../models/home_model.dart';
import '../../widgets/custom_text.dart';
class PromoScreen extends StatelessWidget {
   PromoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 520,
              width: double.infinity,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: food1.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    childAspectRatio: 1/2,
                    mainAxisExtent: 240
                ),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Container(
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
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                  text: food1[index].distext,
                                  fontSize: 11,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                CustomText(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  text: food1[index].price,
                                ),
                                const SizedBox(
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
                    ],
                  ),
                ),),
            ),
          ],
        ),
      ),
    );
  }
  List<dynamic> food1 = [
    HomescreenModel(
      image: const AssetImage(imgNoodles),
      titletext: "Yakisoba Noodles",
      distext: 'Noodle with Pork',
      price: '1000 PKR',
    ),
    HomescreenModel(
      image: const AssetImage(imgNoodles),
      titletext: "Yakisoba Noodles",
      distext: 'Noodle with Pork',
      price: '1000 PKR',
    ),
    HomescreenModel(
      image: const AssetImage(imgNoodles),
      titletext: "Yakisoba Noodles",
      distext: 'Noodle with Pork',
      price: '1000 PKR',
    ),
    HomescreenModel(
      image: const AssetImage(imgNoodles),
      titletext: "Yakisoba Noodles",
      distext: 'Noodle with Pork',
      price: '1000 PKR',
    ),
    HomescreenModel(
      image: const AssetImage(imgNoodles),
      titletext: "Yakisoba Noodles",
      distext: 'Noodle with Pork',
      price: '1000 PKR ',
    ),
  ];
}
