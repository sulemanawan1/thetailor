import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:thetailor/Widgets/My%20Button/my_button.dart';

import '../../Signup/View/signup.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(children: [
      
      Center(
        child: Container(width: 400,
            child: SvgPicture.asset('images/tailor_welcome.svg')),
      ),
      Text("Weclome to the",style:TextStyle(fontWeight: FontWeight.w600,fontSize: 30),),
      Text("The Tailor " ,style: TextStyle(color: HexColor("#F50057"),fontSize: 25,fontWeight: FontWeight.w500),),
      SizedBox(height: 10,),
      MyButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
      },
        borderThickness: 1.3,
        textColor: Colors.white,
          width: 300,
          horizontalPadding: 0, verticalPadding:6, name: 'Signup', color:HexColor("#F50057") , maxLines: 1, borderColor:HexColor("#F50057") ,),
      MyButton(onPressed: (){},
        borderThickness: 1,
        textColor: HexColor("#F50057"),
          width: 300,
          horizontalPadding: 0, verticalPadding: 6, name: 'Sigin', color:Colors.white , maxLines: 1, borderColor:HexColor("#F50057") ,),

    ],),);
  }
}
