import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/features/note/domain/entities/note_entity.dart';
import 'package:untitled/features/note/view/notes_list_page/notes_list_controller.dart';

class NotesListScreen extends GetView<NotesListController> {
  const NotesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<NotesListController>(
        builder: (c) {
          final List<NoteEntity> notes = controller.notes;
          if (notes.isEmpty) {
            return Center(
              child: Text('No Notes Yet....', style: TextStyle(fontSize: 28)),
            );
          }
          return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              final NoteEntity noteEntity = notes[index];
              return ListTile(
                title: Text(
                  noteEntity.title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  noteEntity.body,
                  style: TextStyle(fontSize: 18),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () => controller.editNote(noteEntity),
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => controller.deleteNote(noteEntity.id!),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.putNewNote(),
        child: Icon(Icons.add, size: 50),
      ),
    );
  }
}
