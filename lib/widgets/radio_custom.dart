import 'package:food_delivery_app/consts/colors.dart';
import '../consts/consts.dart';

class CustomRadioButton extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CustomRadioButton({super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Container(
        width: 24.0, // Adjust the size as needed
        height: 24.0, // Adjust the size as needed
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: value ? Colors.white : Colors.white,
          border: Border.all(
            color: Maincolor,
            width: 2.0,
          ),
        ),
        child: Center(
          child: value
              ? const Icon(
            Icons.circle,
            size: 16.0,
            color: Maincolor,
          )
              : null,
        ),
      ),
    );
  }
}