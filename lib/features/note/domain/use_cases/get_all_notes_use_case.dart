import 'package:untitled/features/note/domain/entities/note_entity.dart';
import 'package:untitled/features/note/domain/repositories/note_repository.dart';

class GetAllNotesUseCase {
  final NoteRepository noteRepository;
  GetAllNotesUseCase(this.noteRepository);
  Future<List<NoteEntity>> call() async {
    return await noteRepository.getAllNotes();
  }
}
