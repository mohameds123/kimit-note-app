import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimitnoteappliction/core/const/txt.dart';
import 'package:kimitnoteappliction/core/theme/colors_manager.dart';
import 'package:kimitnoteappliction/logic/sign_up/cubit.dart';
import 'package:kimitnoteappliction/logic/sign_up/state.dart';
import 'package:kimitnoteappliction/presentation/widgets/text_form_feild_widget.dart';

import 'home_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => SignUpCubit(),
        child: BlocConsumer<SignUpCubit, SignUpStates>(
          listener: (context, state) {
            if(state is SignUpSuccessState){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen ()));
            }
          },
          builder: (context, state) {
            return Scaffold(
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
                    InkWell(
                      onTap: (){
                        context.read<SignUpCubit>().signUp(emailController.text, passController.text);
                      },
                      child: Container(
                        width: 318,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
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
                    ),
                    SizedBox(
                      height: 60,
                    ),


                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
