import 'package:flutter/material.dart';
import 'package:kimitnoteappliction/presentation/screens/sign_up_screen.dart';

import '../../core/const/txt.dart';
import '../../core/theme/colors_manager.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.primaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Center(
                child: Text(
                  Txt.loginTxt,
                  style: TextStyle(
                    color: ColorsManager.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 16),

              /// Email
              Text(
                Txt.email,
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),

              SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: TextFormField(
                  controller: emailController,
                  style: TextStyle(color: ColorsManager.white),
                  decoration: InputDecoration(
                    fillColor: ColorsManager.txtFeildColor,
                    filled: true,
                    border: InputBorder.none,
                    hintText: Txt.emailHint,
                  ),
                ),
              ),
              SizedBox(height: 16),

              ///Pass
              Text(
                Txt.pass,
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 16),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: TextFormField(
                  controller: passController,
                  style: TextStyle(color: ColorsManager.white),
                  decoration: InputDecoration(
                    fillColor: ColorsManager.txtFeildColor,
                    filled: true,
                    border: InputBorder.none,
                    hintText: Txt.passHintTxt,
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 318,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child:  Center(
                  child: Text(
                    Txt.loginButtonTxt,
                    style: TextStyle(
                      color: ColorsManager.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Container(
                width: 318,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child:  Center(
                  child: Text(
                    Txt.googleTxt,
                    style: TextStyle(
                      color: ColorsManager.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Text("Don’t have an account ? "),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  }, child: Text("Sign up"))
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
