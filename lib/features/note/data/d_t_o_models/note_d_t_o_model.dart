import 'package:objectbox/objectbox.dart';

@Entity()
class NoteDTOModel {
  @Id()
  int? id;
  String? title;
  String? body;
}