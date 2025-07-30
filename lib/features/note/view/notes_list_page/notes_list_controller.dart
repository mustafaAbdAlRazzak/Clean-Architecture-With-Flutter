import 'package:get/get.dart';
import 'package:untitled/core/dependency_injection/dependency_injection.dart';
import 'package:untitled/features/note/domain/entities/note_entity.dart';
import 'package:untitled/features/note/view/put_note_page/put_note_binding.dart';
import 'package:untitled/features/note/view/put_note_page/put_note_screen.dart';

class NotesListController extends GetxController {
  List<NoteEntity> notes = <NoteEntity>[];

  final _di = Get.find<DependencyInjection>();

  @override
  void onInit() {
    super.onInit();
    loadNotes();
  }

  void loadNotes() async {
    notes = await _di.getAllNotesUseCase();
    update();
  }

  void deleteNote(int id) async {
    await _di.deleteNoteUseCase(id: id);
    loadNotes();
  }

  void putNewNote() async {
    await Get.to(() => PutNoteScreen(), binding: PutNoteBinding());
    loadNotes();
  }

  void editNote(NoteEntity noteEntity) async {
    await Get.to(
      () => PutNoteScreen(),
      binding: PutNoteBinding(noteEntity: noteEntity),
    );
    loadNotes();
  }
}
