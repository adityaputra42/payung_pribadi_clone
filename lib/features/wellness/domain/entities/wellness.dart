import 'package:isar/isar.dart';

part 'wellness.g.dart';

@Collection()
class Wellness {
  Id? id = Isar.autoIncrement;
  String? image;
  String? label;
  double? price;

  Wellness({this.id, this.image, this.label, this.price});
}
