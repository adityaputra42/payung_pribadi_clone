import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:payung_pribadi_clone/core/common/widget/drop_down.dart';
import 'package:payung_pribadi_clone/core/common/widget/input_text.dart';
import 'package:payung_pribadi_clone/core/common/widget/primary_button.dart';
import 'package:payung_pribadi_clone/core/utils/double_extension.dart';

import '../../bloc/profile_bloc.dart';

class BiodataDiriForm extends StatefulWidget {
  const BiodataDiriForm({super.key});

  @override
  State<BiodataDiriForm> createState() => _BiodataDiriFormState();
}

class _BiodataDiriFormState extends State<BiodataDiriForm> {
  final namaLengkapController = TextEditingController();
  final tanggalLahirController = TextEditingController();
  final alamatEmailController = TextEditingController();
  final noHpController = TextEditingController();
  var tanggalLahir = DateTime.now();
  var jenisKelamin = '';
  var pendidikan = '';
  var statusPerkawinan = '';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InputText(
          hintText: "Masukan Nama",
          title: "NAMA LENGKAP",
          controller: namaLengkapController,
        ),
        widget.height(12),
        InputText(
          hintText: "Masukan Nama",
          title: "TANGGAL LAHIR",
          controller: tanggalLahirController,
          keyboardType: TextInputType.none,
          icon: InkWell(
            onTap: () {
              showDatePicker(
                      context: context,
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                      initialDate: tanggalLahir)
                  .then((v) {
                setState(() {
                  tanggalLahirController.text =
                      DateFormat('dd MMMM yyyy').format(v ?? DateTime.now());
                  tanggalLahir = v ?? DateTime.now();
                });
              });
            },
            child: const Icon(
              Icons.calendar_today_outlined,
              size: 20,
            ),
          ),
        ),
        widget.height(12),
        DropDownCustom(
          listData: const ["Laki-Laki", "Perempuan"],
          hint: "Pilih jenis kelamin",
          title: "JENIS KELAMIN",
          value: jenisKelamin.isEmpty ? null : jenisKelamin,
          onChange: (v) {
            setState(() {
              jenisKelamin = v ?? '';
            });
          },
        ),
        widget.height(12),
        InputText(
          hintText: "Masukan Nama",
          title: "ALAMAT EMAIL",
          controller: alamatEmailController,
        ),
        widget.height(12),
        InputText(
          hintText: "Masukan Nama",
          title: "NO. HP",
          controller: noHpController,
          keyboardType: TextInputType.number,
        ),
        widget.height(12),
        DropDownCustom(
          listData: const [
            "SD",
            "SMP",
            "SMA",
            "D1",
            "D2",
            "D3",
            "S1",
            "S2",
            "S3"
          ],
          hint: "Pilih tingkat pendidikan",
          title: "PENDIDIKAN",
          value: pendidikan.isEmpty ? null : pendidikan,
          onChange: (v) {
            setState(() {
              pendidikan = v ?? '';
            });
          },
        ),
        widget.height(12),
        DropDownCustom(
          listData: const ["Belum Kawin", "Kawin", "Janda", "Duda"],
          hint: "Pilih status pernikahan",
          title: "STATUS PERNIKAHAN",
          value: statusPerkawinan.isEmpty ? null : statusPerkawinan,
          onChange: (v) {
            setState(() {
              statusPerkawinan = v ?? '';
            });
          },
        ),
        widget.height(24),
        PrimaryButton(
            title: "Selanjutnya",
            onPressed: () {
              context.read<ProfileBloc>().add(const TabChange(1));
            }),
        widget.height(24),
      ],
    );
  }
}
