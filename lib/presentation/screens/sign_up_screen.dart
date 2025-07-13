import 'package:flutter/material.dart';
import 'package:kimitnoteappliction/core/const/txt.dart';
import 'package:kimitnoteappliction/core/theme/colors_manager.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  Txt.createAcc,
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
                    Txt.signUp,
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


            ],
          ),
        ),
      ),
    );
  }
}
