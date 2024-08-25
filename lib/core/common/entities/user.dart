import 'package:isar/isar.dart';
part 'user.g.dart';

@Collection()
class User {
  Id? id = Isar.autoIncrement;
  String? email;
  String? namaLengkap;
  String? imagePath;

  User({
    this.id,
    this.email,
    this.namaLengkap,
    this.imagePath,
  });
}
