import 'package:get/get.dart';
import 'package:untitled/features/note/data/data_sources/local_data_source.dart';
import 'package:untitled/features/note/data/data_sources/object_box_data_source.dart';
import 'package:untitled/features/note/data/repositories/note_repository_impl.dart';
import 'package:untitled/features/note/domain/repositories/note_repository.dart';
import 'package:untitled/features/note/domain/use_cases/add_note_use_case.dart';
import 'package:untitled/features/note/domain/use_cases/delete_note_use_case.dart';
import 'package:untitled/features/note/domain/use_cases/edit_note_use_case.dart';
import 'package:untitled/features/note/domain/use_cases/get_all_notes_use_case.dart';
import 'package:untitled/objectbox.g.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class DependencyInjection extends GetxService {
  late final AddNoteUseCase addNoteUseCase;
  late final EditNoteUseCase editNoteUseCase;
  late final DeleteNoteUseCase deleteNoteUseCase;
  late final GetAllNotesUseCase getAllNotesUseCase;
  late final NoteRepository noteRepository;
  late final LocalDataSource localDataSource;
  late final Store store;

  Future<DependencyInjection> init() async {
    final docsDir = await getApplicationDocumentsDirectory();
    store = await openStore(directory: p.join(docsDir.path, "obx-example"));
    localDataSource = ObjectBoxDataSource(store);
    noteRepository = NoteRepositoryImpl(localDataSource);
    getAllNotesUseCase = GetAllNotesUseCase(noteRepository);
    deleteNoteUseCase = DeleteNoteUseCase(noteRepository);
    editNoteUseCase = EditNoteUseCase(noteRepository);
    addNoteUseCase = AddNoteUseCase(noteRepository);
    return this;
  }
}
