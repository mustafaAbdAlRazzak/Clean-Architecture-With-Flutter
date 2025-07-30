import 'package:objectbox/objectbox.dart';
import 'package:untitled/features/note/data/d_t_o_models/note_d_t_o_model.dart';
import 'package:untitled/features/note/data/data_sources/local_data_source.dart';

class ObjectBoxDataSource implements LocalDataSource {
  final Store store;
  ObjectBoxDataSource(this.store);
  @override
  Future<void> addNote({required NoteDTOModel noteDTOModel}) async {
    store.box<NoteDTOModel>().put(noteDTOModel);
  }

  @override
  Future<void> deleteNote({required int id}) async {
    store.box<NoteDTOModel>().remove(id);
  }

  @override
  Future<void> editNote({required NoteDTOModel noteDTOModel}) async {
    store.box<NoteDTOModel>().put(noteDTOModel);
  }

  @override
  Future<List<NoteDTOModel>> getAllNotes() async {
    return store.box<NoteDTOModel>().getAll();
  }
}
