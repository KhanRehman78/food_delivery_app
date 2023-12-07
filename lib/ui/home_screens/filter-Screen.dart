import 'package:flutter/material.dart';
import 'package:food_delivery_app/ui/home_screens/searchistory_screen.dart';
import 'package:food_delivery_app/widgets/custom_text.dart';

import '../../consts/consts.dart';

class FilterScreen extends StatefulWidget {
  FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues _currentRangeValues = const RangeValues(2000, 8000);

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
            Icons.arrow_back,
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
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Clear all",
                color: Maincolor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              26.heightBox,
              CustomText(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                text: "Price Range",
              ),
              RangeSlider(activeColor: Maincolor,
                inactiveColor: Colors.grey.shade300,
                overlayColor: MaterialStateProperty.all(Maincolor),
                values: _currentRangeValues,
                max: 10000,
                divisions: 5,
                labels: RangeLabels(
                  _currentRangeValues.start.round().toString(),
                  _currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _currentRangeValues = values;
                  });
                },
              ),
              CustomText(
                text: "Categoriers",
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
