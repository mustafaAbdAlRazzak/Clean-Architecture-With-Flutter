import 'package:untitled/features/note/domain/entities/note_entity.dart';
import 'package:untitled/features/note/domain/repositories/note_repository.dart';

class AddNoteUseCase {
  final NoteRepository noteRepository;
  AddNoteUseCase(this.noteRepository);
  Future<void> call({required NoteEntity noteEntity}) async {
    await noteRepository.addNote(noteEntity: noteEntity);
  }
}
