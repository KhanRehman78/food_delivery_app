import 'package:flutter/material.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/models/notification_model.dart';
import 'package:food_delivery_app/widgets/custom_text.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool radio = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
        ),
        title: CustomText(
          text: "Notification",
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            17.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              /// today text mark as read
              child: Row(
                children: [
                  CustomText(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    text: "Today"
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        radio = !radio;
                      });
                    },
                    child: Icon(
                      radio ? Icons.radio_button_off_outlined : Icons.radio_button_checked_rounded,
                      color: Maincolor,
                    ),
                  ),
                  4.widthBox,
                  CustomText(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      text: "Mark as read"
                  ),
                ],
              ),
            ),
            Container(
              height: 500,
              child: ListView.builder(
                itemCount: notify.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(16),
                  ),
                    child: Row(
                      children: [
                        /// image container
                        Container(
                          height: 80,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: notify[index].image,fit: BoxFit.cover),
                             borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8,left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                text: notify[index].titletext,
                              ),
                              CustomText(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                                fontSize: 11,
                                text: notify[index].distext,
                              ),
                              CustomText(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                text: notify[index].time,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),),
            )
          ],
        ),
      ),
    );
  }
  List <dynamic> notify = [
    Notificationmodel(
      image: AssetImage(imgNoodles),
      distext: "Buy 1 get free for until now\n30, 2023",
      titletext: "Yakisoba Noodles",
      time: "a few seconds ago"
    ),
    Notificationmodel(
        image: AssetImage(imgRolledbread),
        distext: "Buy 1 get free for until now\n30, 2023",
        titletext: "Rolled Borek",
        time: "10 min ago"
    ),
    Notificationmodel(
        image: AssetImage(imgNoodles),
        distext: "Buy 1 get free for until now\n30, 2023",
        titletext: "Yakisoba Noodles",
        time: "14 min ago"
    ),
    Notificationmodel(
        image: AssetImage(imgNoodles),
        distext: "Buy 1 get free for until now\n30, 2023",
        titletext: "Yakisoba Noodles",
        time: "20 min ago"
    ),
  ];
}
