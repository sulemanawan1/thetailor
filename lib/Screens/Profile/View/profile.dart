import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../Constants/constants.dart';
import '../../../Widgets/My Button/my_button.dart';
import '../../../Widgets/My TextForm Field/my_textform_field.dart';
import '../../Signup/View/signup.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [



              Padding(padding: const EdgeInsets.all(8),
                child: Container(
                  width: 50,height: 50,
                  child:const Icon(Icons.arrow_back,color: Colors.white,) , decoration: BoxDecoration(color: primaryColor,
                    borderRadius: BorderRadius.circular(100)),),
              ),


              const Padding(padding: EdgeInsets.all(12),
                child: Text(
                  "Profile",style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold),),
              )
              ,

              SizedBox(height: 40,),
              Center(
                child: Container(
                  width: 150,height: 150,child: Stack(children: [
                  Align(alignment:Alignment.center,
                    child: Icon(
                      Icons.person,color: primaryColor,size: 100,),
                  ),
                  Align(alignment: Alignment.bottomRight,
                      child: Icon(Icons.camera_alt,))

                ],), decoration: BoxDecoration(border: Border.all(color: primaryColor),

                    borderRadius: BorderRadius.circular(8)
                    // shape:BoxShape.circle,
                  // color: primaryColor


                ),),
              ),

              SizedBox(height: 40,),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text("First Name",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)),

              Container(width: 400,
                child: MyTextFormField(hintText: 'First Name', obscureText:false, labelText: 'First Name',
                    onFocusedBorderColor: primaryColor, onEnabledBorderColor: primaryColor),
              )
              ,
              SizedBox(height: 10,),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 8) ,
                  child: Text("Last Name",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)),
              Container(width: 400,
                child: MyTextFormField(hintText: 'Last Name', obscureText:false, labelText: 'Last Name',
                    onFocusedBorderColor: primaryColor, onEnabledBorderColor: primaryColor),
              )
,   SizedBox(height: 10,),

              MyButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Signup()));
              },
                borderThickness: 1.3,
                textColor: Colors.white,
                width: 400,
                height: 60,
                horizontalPadding: 8, verticalPadding:0, name: 'Submit', color:HexColor("#F50057") , maxLines: 1, borderColor:HexColor("#F50057") ,),

            ],),
        ),
      ),


    );
}}
