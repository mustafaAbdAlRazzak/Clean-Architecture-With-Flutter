import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled/features/note/view/notes_list_page/notes_list_binding.dart';
import 'package:untitled/features/note/view/notes_list_page/notes_list_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: NotesListScreen(),
      initialBinding: NotesListBinding(),
      debugShowCheckedModeBanner: false,
    );
  }
  
}