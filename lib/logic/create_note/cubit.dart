import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kimitnoteappliction/data/note_model.dart';
import 'package:kimitnoteappliction/logic/create_note/states.dart';

class CreateNoteCubit extends Cubit <CreateNoteStates>{
  CreateNoteCubit () : super (CreateNoteInitialState());
  
  Future createNote (NoteModel note)async {
    emit(CreateNoteLoadingState());
    try{
      await FirebaseFirestore.instance.collection("notes").add(note.toJson());
      emit(CreateNoteSuccessState());
    }catch(e) {
      emit(CreateNoteErrorState(errorMessage: e.toString()));
    }
  }



}