import 'package:get/get.dart';
import 'package:untitled/features/note/domain/entities/note_entity.dart';
import 'package:untitled/features/note/view/put_note_page/put_note_controller.dart';

class PutNoteBinding extends Bindings {
  final NoteEntity? noteEntity;
  PutNoteBinding({this.noteEntity});
  @override
  void dependencies() {
    Get.put<PutNoteController>(PutNoteController(noteRntity: noteEntity));
  }
}
