import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../Constants/constants.dart';
import '../../../Widgets/My Button/my_button.dart';
import '../../../Widgets/My TextForm Field/my_textform_field.dart';
import '../../Signup/View/signup.dart';
class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),

                Center(
                  child: Container(height:150,
                      child: SvgPicture.asset('images/login.svg')),
                ),
               SizedBox(height: 20,),
                Center(
                    child: Text(
                  "Hello Again !",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: primaryColor),
                )),
                SizedBox(height: 20,),
                const Center(
                  child: Text(
                    "Welcome Back you've \n been missed !",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20,),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Phone Number",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    )),
                Container(
                  width: 400,
                  child: MyTextFormField(
                      hintText: 'Phone Number',
                      obscureText: false,
                      labelText: 'Phone Number',
                      onFocusedBorderColor: primaryColor,
                      onEnabledBorderColor: primaryColor),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "Password",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    )),
                Container(
                  width: 400,
                  child: MyTextFormField(
                      hintText: 'Password',
                      obscureText: true,
                      labelText: 'Password',
                      onFocusedBorderColor: primaryColor,
                      onEnabledBorderColor: primaryColor),
                ),
                MyButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Signup()));
                  },
                  borderThickness: 1.3,
                  textColor: Colors.white,
                  width: 400,
                  height: 60,
                  horizontalPadding: 8,
                  verticalPadding: 0,
                  name: 'Sign in',
                  color: HexColor("#F50057"),
                  maxLines: 1,
                  borderColor: HexColor("#F50057"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Wrap(
                    children: [
                      const Text("Not a Member?"),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const Signup())));
                          },
                          child: Text(
                            "Register now",
                            style: TextStyle(color: primaryColor),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
