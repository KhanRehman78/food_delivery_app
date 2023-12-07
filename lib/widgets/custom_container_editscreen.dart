import 'package:flutter/material.dart';
import 'package:food_delivery_app/consts/consts.dart';
class Mycustomcontainer extends StatefulWidget {
  final String item;
   const Mycustomcontainer({
     super.key,
     required this.item});

  @override
  State<Mycustomcontainer> createState() => _MycustomcontainerState();
}
class _MycustomcontainerState extends State<Mycustomcontainer> {
  Color containerColor = Colors.grey.shade300; // Initial color
  Color textColor = Colors.white; // Initial text color
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Change color on tap
        setState(() {
          containerColor = containerColor == Colors.grey.shade300
              ? Maincolor
              : Colors.grey.shade300;

          // Change text color accordingly
          textColor = containerColor == Colors.grey.shade300 ? Colors.black : Colors.white;
        });
      },
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: containerColor,
        ),
        margin: EdgeInsets.all(2),
        child: Center(
          child: Text(
            widget.item,
            style: TextStyle(
              fontSize: 13,
              color: textColor,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ),
    );
  }
}
