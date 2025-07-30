import 'package:untitled/features/note/data/d_t_o_models/note_d_t_o_model.dart';
import 'package:untitled/features/note/domain/entities/note_entity.dart';

class NoteMapper {
  static NoteEntity toEntity(NoteDTOModel noteDTOModel) {
    return NoteEntity(
      id: noteDTOModel.id,
      title: noteDTOModel.title!,
      body: noteDTOModel.body!,
    );
  }

  static NoteDTOModel toDTOModel(NoteEntity noteEntity) {
    return NoteDTOModel()
      ..id = noteEntity.id
      ..title = noteEntity.title
      ..body = noteEntity.body;
  }
}
