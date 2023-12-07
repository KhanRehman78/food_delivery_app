import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class CustomTextformField extends StatelessWidget {
  const CustomTextformField({
    super.key,
    this.preIcon,
    this.suffIcon,
    this.hintText = "example@gmail.com",
    this.text,
    this.fontBold = FontWeight.w400,
    this.fontSize = 14,
    this.textColor = Colors.black,
    this.myController,
    this.validator,
    this.isOb = false,
    this.eborder= true,
  });

  final Icon? suffIcon;
  final Icon? preIcon;
  final String? hintText;
  final String? text;
  final FontWeight? fontBold;
  final double? fontSize;
  final Color? textColor;
  final bool? isOb;
  final bool? eborder;
  final TextEditingController? myController;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
             SizedBox(
          height: 48,
          width: double.infinity,
          child: TextFormField(
            cursorColor: textColor,
            obscureText: isOb!,
            validator: validator,
            controller: myController,
            decoration: InputDecoration(
              fillColor: const Color(0xffFFFFFF),
              filled: true,
              hintText: hintText,
              prefixIcon: preIcon,
              suffixIcon: suffIcon,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:  BorderSide(width: 1, color: textColor!),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:  BorderSide(width: 1, color: textColor!),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 1,
                ),
              ),
              enabled: eborder!
            ),
          ),
        ),
      ],
    );
  }
}
