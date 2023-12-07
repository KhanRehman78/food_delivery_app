import 'package:flutter/material.dart';

import '../consts/images.dart';

class CustomContainer extends StatelessWidget {
  final Widget? child;
  const CustomContainer({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(image: AssetImage(imgBanner),fit: BoxFit.cover),
        color: Colors.brown,
      ),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(slaad1),alignment: Alignment.centerRight)
        ),
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage(slaad2),alignment: Alignment.centerRight)
          ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(paleet),alignment: AlignmentDirectional(0.7,0),scale: 1),
              ),
              child: child,
            )
        ),
      ),
    );
  }
}
