import 'package:dotted_line/dotted_line.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/widgets/radio_custom.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

bool cash = false;
bool bank = false;
bool card = false;

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        title: CustomText(
          text: "Payment method",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Choose a payment method",
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),



            ListTile(
              leading: Image.asset("assets/images/Frame.png"),
              title: CustomText(
                text: "cash payment",
              ),
              trailing: CustomRadioButton(value: cash, onChanged: (value) {
                setState(() {
                  cash = value!;
                });
                bank = false;
                card = false;
              },),
            ),
            10.heightBox,
            ListTile(
              leading: Image.asset("assets/images/sync.png"),
              title: CustomText(
                text: "Bank Transfer",
              ),
              trailing: CustomRadioButton(value: bank, onChanged: (value) {
                setState(() {
                  bank = value!;
                });
                cash = false;
                card = false;
              },),
            ),
            14.heightBox,
            ListTile(
              leading: Image.asset("assets/images/credit-card.png"),
              title: CustomText(
                text: "credit/debit card",
              ),
              trailing: CustomRadioButton(value: card, onChanged: (value) {
                setState(() {
                  card = value!;
                });
                cash = false;
                bank = false;
              },),
            ),
            30.heightBox,
            // sub total text
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CustomText(
                    text: "Sub total",
                    fontSize: 17,
                  ),
                  Spacer(),
                  CustomText(
                    text: "1000 PKR",
                    color: Maincolor,
                  )
                ],
              ),
            ),
            5.heightBox,
            // fee text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CustomText(
                    text: "Taxes & Fees",
                    fontSize: 17,
                  ),
                  Spacer(),
                  CustomText(
                    text: "1000 PKR",
                    color: Maincolor,
                  )
                ],
              ),
            ),
            5.heightBox,
            // delivery text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CustomText(
                    text: "Delivery fee",
                    fontSize: 17,
                  ),
                  Spacer(),
                  CustomText(
                    text: "100 PKR",
                    color: Maincolor,
                  )
                ],
              ),
            ),
            5.heightBox,
            DottedLine(
              direction: Axis.horizontal,
              dashColor: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Row(
                children: [
                  CustomText(
                    text: "Total price",
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  Spacer(),
                  CustomText(
                    text: "2100 PKR",
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
            ),
            20.heightBox,
            // check out button
            MyButton(
              text: "Check out",
              fontSize: 15,
              fontWeight: FontWeight.w500,
              containerColor: Maincolor,
              height: 60,
              width: double.infinity,
              color: Colors.white,
              circularRadius: BorderRadius.circular(16),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
