import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:payung_pribadi_clone/core/common/entities/user.dart';
import 'package:payung_pribadi_clone/features/profile/domain/entities/biodata_diri.dart';
import 'package:payung_pribadi_clone/features/wellness/domain/entities/wellness.dart';

class DbConfig {
  DbConfig._privateConstructor();
  static final DbConfig instance = DbConfig._privateConstructor();
  factory DbConfig() {
    return instance;
  }
  late Isar isar;

  void onInit() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open(
      [
        UserSchema,
        BiodataDiriSchema,
        WellnessSchema,
      ],
      inspector: true,
      directory: dir.path,
    );
  }

  Future<void> setUser(User user) async {
    await isar.writeTxn(() async {
      await isar.users.put(user);
    });
  }

  Future<User> getUser() async {
    var user = User();
    await isar.txn(() async {
      final pass = await isar.users.where().findAll();
      user = pass.first;
    });
    return user;
  }

  Future<User> updateImageProfile(int id, String image) async {
    User account = User();
    await isar.writeTxn(() async {
      var add = await isar.users.get(id);
      add!.imagePath = image;
      await isar.users.put(add);
      account = add;
    });
    return account;
  }

  Future<void> setBiodata(BiodataDiri bio) async {
    await isar.writeTxn(() async {
      await isar.biodataDiris.put(bio);
    });
  }

  Future<BiodataDiri> getBiodata() async {
    var bio = BiodataDiri();
    await isar.txn(() async {
      final bios = await isar.biodataDiris.where().findAll();
      bio = bios.first;
    });
    return bio;
  }

  Future<BiodataDiri> updateBiodata(int id,
      {String? nama,
      String? jenisKelamin,
      String? tanggal,
      String? nohp,
      String? pendidikan,
      String? status}) async {
    BiodataDiri bio = BiodataDiri();
    await isar.writeTxn(() async {
      var add = await isar.biodataDiris.get(id);
      if (nama != null) {
        add?.namaLengkap = nama;
      }
      if (jenisKelamin != null) {
        add?.jenisKelamin = jenisKelamin;
      }
      if (tanggal != null) {
        add?.tanggalLahir = tanggal;
      }
      if (nohp != null) {
        add?.noHp = nohp;
      }
      if (pendidikan != null) {
        add?.pendidikan = pendidikan;
      }
      if (status != null) {
        add?.status = status;
      }

      await isar.biodataDiris.put(add!);
      bio = add;
    });
    return bio;
  }

  Future<void> setWellness(Wellness value) async {
    await isar.writeTxn(() async {
      await isar.wellness.put(value);
    });
  }

  Future<List<Wellness>> getWellnessList() async {
    List<Wellness> data = [];
    await isar.txn(() async {
      final values = await isar.wellness.where().findAll();
      data.addAll(values);
    });
    return data;
  }
}
