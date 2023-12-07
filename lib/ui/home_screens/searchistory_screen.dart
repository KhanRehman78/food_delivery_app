import 'package:flutter/material.dart';
import 'package:food_delivery_app/consts/colors.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/ui/home_screens/home_screen.dart';
import 'package:food_delivery_app/ui/home_screens/filter-Screen.dart';
import 'package:food_delivery_app/ui/home_screens/search_screen.dart';
import 'package:food_delivery_app/widgets/custom_text.dart';

class SearchistoryScreen extends StatelessWidget {
  TextEditingController _searchcontroller = TextEditingController();

  SearchistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: const Icon(
            Icons.cancel_outlined,
            color: blackcolor,
            size: 30,
          ),
        ),
        title: const Text(
          'Search',
          style: TextStyle(
            color: blackcolor,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search row
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: SearchBar(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchScreen()));
                      },
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
                      trailing: const <Widget>[Icon(Icons.mic)],
                    ),
                  ),
                  1.widthBox,
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FilterScreen()));
                        },
                        child: const Icon(
                          Icons.filter_list_alt,
                          color: Maincolor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // recent search
              10.heightBox,
              const Row(
                children: [
                  CustomText(
                    text: "Recent Search",
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  CustomText(
                    text: "Clear all",
                    fontSize: 18,
                    color: Maincolor,
                  ),
                ],
              ),
              // ListViewBuilder
              Container(
                height: 178,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 100,
                      width: 172,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 125,
                                width: 172,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/dolma.png"),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                          CustomText(
                            text: "Dolma With Rice",
                            fontSize: 15.6,
                            fontWeight: FontWeight.w400,
                          ),
                          CustomText(
                            text: "Bayramoğlu Döner, Rüzgarlıbahçe ",
                            fontSize: 10,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              15.heightBox,
              CustomText(
                text: "Recommend for you",
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              15.heightBox,
              Container(
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 109,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: 91,
                            width: 91,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/hummus.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                CustomText(
                                  text: "Pumpkin Hummus",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                ),
                                CustomText(
                                  text: "Beyti Restaurant, Taksim",
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
