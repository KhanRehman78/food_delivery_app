import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/models/editScreen_model.dart';
import 'package:food_delivery_app/widgets/custom_container.dart';
import 'package:food_delivery_app/widgets/custom_container_editscreen.dart';
import 'package:food_delivery_app/widgets/custom_text.dart';

class EditScreen extends StatefulWidget {

   EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController _addresscontroller = TextEditingController();
  TextEditingController _buildingscontroller = TextEditingController();

  bool changeColor = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: CustomText(
          text: "Edit Address",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.cancel),
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.heightBox,
              Container(
                height: 250,
                width: double.infinity,
                child: Stack(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        height: 194,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Rectangle 1161.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        // child: Image(image: AssetImage("assetName")),
                      ),

                    Align(heightFactor: 4.8,
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 45,
                        width: 194,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.my_location),
                              SizedBox(
                                width: 5,
                              ),
                              CustomText(
                                text: "Pin location",
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
              CustomText(
                text: "Apt / Suite / Floor",
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              ///apt/floor address
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: TextFormField(
                  cursorHeight: 19,
                  controller: _addresscontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none
                  ),
                ),
              ),
              24.heightBox,
              CustomText(
                text: "Business / Building Name",
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
              ///building address
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: TextFormField(
                  cursorHeight: 19,
                  controller: _buildingscontroller,
                  decoration: InputDecoration(
                      border: InputBorder.none
                  ),
                ),
              ),
              21.heightBox,
              /// divider
              SizedBox(
                child: Divider(),
              ),
              CustomText(
                text: "Delivery details",
                fontSize: 21,
                fontWeight: FontWeight.w500,
              ),
              18.heightBox,
              Container(
                height: 60,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder:  (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Mycustomcontainer(item: editmodel[index].texxt) ,
                  ),),
              ),
              SizedBox(
                height: 20,
              ),
              /// save button
              SizedBox(
                height: 65,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Maincolor),

                  ),
                    onPressed: (){}, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle,color: Colors.white,),
                  SizedBox(width: 5,),
                  CustomText(
                    text: "Save and Use",
                    fontSize: 17,
                    color: Colors.white,
                  )
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
  List <dynamic> editmodel =[
    Editmodel(
      texxt: "Leave at Doorstep"
    ),
    Editmodel(
        texxt: "In-Person Handoff"
    ),
    Editmodel(
        texxt: "Meet Outside House"
    ),
  ];
}
