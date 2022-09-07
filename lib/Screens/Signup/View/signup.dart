import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:thetailor/Constants/constants.dart';
import 'package:thetailor/Screens/Profile/View/profile.dart';
import 'package:thetailor/Screens/Sign%20in/View/signin.dart';
import 'package:thetailor/Widgets/My%20TextForm%20Field/my_textform_field.dart';

import '../../../Widgets/My Button/my_button.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
              Padding(padding: EdgeInsets.all(8),
                child: Container(
                  width: 50,height: 50,
                  child:Icon(Icons.arrow_back,color: Colors.white,) , decoration: BoxDecoration(color: primaryColor,
                    borderRadius: BorderRadius.circular(100)),),
              ),
              Padding(padding: EdgeInsets.all(12),
                child: Text(
                    "Create an Account",style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold),),
              )
                ,

                Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Phone Number",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)),
               Container(width: 400,
                 child: MyTextFormField(hintText: 'Phone Number', obscureText:false, labelText: 'Phone Number',
                     onFocusedBorderColor: primaryColor, onEnabledBorderColor: primaryColor),
               )

                ,Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Password",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)),
                Container(width: 400,
                  child: MyTextFormField(hintText: 'Password', obscureText:true, labelText: 'Password',
                      onFocusedBorderColor: primaryColor, onEnabledBorderColor: primaryColor),
                )
                ,
                Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Confirm Password",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)),
                Container(width: 400,
                  child: MyTextFormField(hintText: 'Confirm PassWord', obscureText:true, labelText: 'Confirm Password',
                      onFocusedBorderColor: primaryColor, onEnabledBorderColor: primaryColor),
                ),

                MyButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                },
                  borderThickness: 1.3,
                  textColor: Colors.white,
                  width: 400,
                  height: 60,
                  horizontalPadding: 8, verticalPadding:0, name: 'Create Account', color:HexColor("#F50057") , maxLines: 1, borderColor:HexColor("#F50057") ,),
 SizedBox(height: 20,),
  Center(
    child: Wrap(children: [

    Text("Already have an Account?"),
      SizedBox(width: 10,),

      GestureDetector(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => Signin())));
        
      },
          child: Text("Login",style: TextStyle(color: primaryColor),))

],),
  )

              ],),
          ),
        ),
        
        
      ),
    );
  }
}
