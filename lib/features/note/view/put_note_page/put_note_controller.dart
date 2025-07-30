import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:untitled/core/dependency_injection/dependency_injection.dart';
import 'package:untitled/features/note/domain/entities/note_entity.dart';

class PutNoteController extends GetxController {
  int? id;
  final TextEditingController titleTextEditingController =
      TextEditingController();
  final TextEditingController bodyTextEditingController =
      TextEditingController();
  final _di = Get.find<DependencyInjection>();
  PutNoteController({NoteEntity? noteRntity}) {
    if (noteRntity != null) {
      id = noteRntity.id!;
      titleTextEditingController.text = noteRntity.title;
      bodyTextEditingController.text = noteRntity.body;
    }
  }
  void onConfirm() async {
    NoteEntity noteEntity = NoteEntity(
      id: id,
      title: titleTextEditingController.text,
      body: bodyTextEditingController.text,
    );
    await _di.addNoteUseCase(noteEntity: noteEntity);
    Get.back();
  }

  void getBack() {
    Get.back();
  }
}
