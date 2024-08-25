import 'package:isar/isar.dart';

part 'biodata_diri.g.dart';

@Collection()
class BiodataDiri {
  Id? id = Isar.autoIncrement;
  int? userId;
  String? namaLengkap;
  String? tanggalLahir;
  String? jenisKelamin;
  String? email;
  String? noHp;
  String? pendidikan;
  String? status;

  BiodataDiri(
      {this.id,
      this.userId,
      this.namaLengkap,
      this.tanggalLahir,
      this.jenisKelamin,
      this.email,
      this.noHp,
      this.pendidikan,
      this.status});
}
