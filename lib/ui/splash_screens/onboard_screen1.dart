import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/ui/splash_screens/onboard_screen2.dart';
import 'package:food_delivery_app/ui/splash_screens/onboard_screen3.dart';
import 'package:food_delivery_app/widgets/custom_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/custom_button.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(

          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              Container(
                height: 350,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgOnboard1,), fit: BoxFit.cover)
                ),
              ),

              SmoothPageIndicator(

                  effect: WormEffect(
                    radius: 12,
                    dotHeight: 15,
                    activeDotColor: Maincolor,
                    dotColor: Colors.grey
                  ),
                  controller: _pageController, count: 3),

              40.heightBox,
              const CustomText(
                text: "Wide range of food \ncategories and more",
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              5.heightBox,
              const CustomText(
                text:
                "Browse through our extensive list of  restaurants and dishes,"
                    " and when you're ready  to order, simply add your desired"
                    " items to your  cart "
                    "and checkout. It's that easy!",
              ),
              /// row page indicator and button
              SizedBox(
                height: MediaQuery.of(context).size.height *0.12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const CustomText(
                      text: "Skip",
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  MyButton(onTap: () {
                    setState(() {  });
                  },
                    height: 50,
                    width: 140,
                    containerColor: Maincolor,
                    text: "Next",
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    circularRadius: BorderRadius.circular(13),
                  )
                ],
               ),

      ],
      ),
        ),
      ),
    );
  }
}