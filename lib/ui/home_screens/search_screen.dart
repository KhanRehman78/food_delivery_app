import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/home_screens/filter-Screen.dart';
import 'package:food_delivery_app/ui/home_screens/searchistory_screen.dart';
import 'package:food_delivery_app/widgets/custom_text.dart';

import '../../consts/consts.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController _searchcontroller = TextEditingController();

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => SearchistoryScreen()));
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
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
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
                    trailing: const <Widget>[Icon(Icons.mic)],
                  ),
                ),
                4.widthBox,
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 37,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15)),
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
                        )),
                  ),
                ),
              ],
            ),
            70.heightBox,
            Image(image: AssetImage(Icsearch)),
            CustomText(
              text: "Item Not Found",
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 6,
            ),
            CustomText(
              text: "Try searching the item with\n"
                  "     a different keyword",
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
