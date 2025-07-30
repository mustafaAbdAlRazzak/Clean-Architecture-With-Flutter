import 'package:untitled/features/note/data/data_sources/local_data_source.dart';
import 'package:untitled/features/note/data/mappers/note_mapper.dart';
import 'package:untitled/features/note/domain/entities/note_entity.dart';
import 'package:untitled/features/note/domain/repositories/note_repository.dart';

class NoteRepositoryImpl implements NoteRepository {
  final LocalDataSource localDataSource;
  NoteRepositoryImpl(this.localDataSource);

  @override
  Future<void> addNote({required NoteEntity noteEntity}) async {
    final noteDTOModel = NoteMapper.toDTOModel(noteEntity);
    await localDataSource.addNote(noteDTOModel: noteDTOModel);
  }

  @override
  Future<void> deleteNote({required int id}) async {
    await localDataSource.deleteNote(id: id);
  }

  @override
  Future<void> editNote({required NoteEntity noteEntity}) async {
    final noteDTOModel = NoteMapper.toDTOModel(noteEntity);
    await localDataSource.editNote(noteDTOModel: noteDTOModel);
  }

  @override
  Future<List<NoteEntity>> getAllNotes() async {
    final noteDTOList = await localDataSource.getAllNotes();
    return noteDTOList.map((dto) => NoteMapper.toEntity(dto)).toList();
  }
}
