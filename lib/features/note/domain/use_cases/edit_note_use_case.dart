import 'package:untitled/features/note/domain/entities/note_entity.dart';
import 'package:untitled/features/note/domain/repositories/note_repository.dart';

class EditNoteUseCase {
  final NoteRepository noteRepository;
  EditNoteUseCase(this.noteRepository);
  Future<void> call({required NoteEntity noteEntity}) async {
    await noteRepository.editNote(noteEntity: noteEntity);
  }
}
