import '../repositories/note_repository.dart';

class DeleteNoteUseCase {
  final NoteRepository noteRepository;
  DeleteNoteUseCase(this.noteRepository);
  Future<void> call({required int id}) async{
    await noteRepository.deleteNote(id: id);
  }
}