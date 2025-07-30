import 'package:untitled/features/note/domain/entities/note_entity.dart';

abstract class NoteRepository {
  Future<void> addNote({required NoteEntity noteEntity});
  Future<void> deleteNote({required int id});
  Future<void> editNote({required NoteEntity noteEntity});
  Future<List<NoteEntity>> getAllNotes();
}
