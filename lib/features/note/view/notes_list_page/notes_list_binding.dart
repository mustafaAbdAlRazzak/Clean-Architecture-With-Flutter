import 'package:get/get.dart';
import 'package:untitled/features/note/view/notes_list_page/notes_list_controller.dart';

class NotesListBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NotesListController>(NotesListController());
  }
}