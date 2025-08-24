import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimitnoteappliction/core/theme/colors_manager.dart';
import 'package:kimitnoteappliction/data/note_model.dart';
import 'package:kimitnoteappliction/logic/create_note/cubit.dart';
import 'package:kimitnoteappliction/logic/create_note/states.dart';
import 'package:kimitnoteappliction/presentation/screens/home_screen.dart';

import '../widgets/botton_widget.dart';
import '../widgets/text_form_feild_widget.dart';


// ignore: must_be_immutable
class CreateNote extends StatelessWidget {

  TextEditingController addr = TextEditingController();
  TextEditingController desc = TextEditingController();

  CreateNote({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => CreateNoteCubit(),
        child: BlocConsumer<CreateNoteCubit, CreateNoteStates>(
          listener: (context, state) {
            if(state is CreateNoteSuccessState){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));

            }
          },
          builder: (context, state) {
            return Scaffold(
              backgroundColor: ColorsManager.primaryColor,
              body: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      'Create New Note',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Head line',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextFormFeildWidget(
                        controller: addr, hintTxt: 'Enter note address'),
                    SizedBox(height: 16),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16),
                    TextFormFeildWidget(
                        controller: desc, hintTxt: 'Enter your Description'),
                    Spacer(),
                    InkWell(child: Button(txt: 'Select Media'),onTap: (){
                      context.read<CreateNoteCubit>().createNote(NoteModel(
                          headline: addr.text,
                          description: desc.text,
                          createdAt: DateTime.now()));
                    },),
                    SizedBox(height: 8),
                    (state is CreateNoteLoadingState) ? CircularProgressIndicator() : Button(txt: 'Create'),
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