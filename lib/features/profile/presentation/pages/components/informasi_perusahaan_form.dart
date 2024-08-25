import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payung_pribadi_clone/core/utils/double_extension.dart';

import '../../../../../core/common/widget/drop_down.dart';
import '../../../../../core/common/widget/input_text.dart';
import '../../../../../core/common/widget/primary_button.dart';
import '../../../../../core/common/widget/secondary_button.dart';
import '../../bloc/profile_bloc.dart';

class InformasiPerusahaanForm extends StatefulWidget {
  const InformasiPerusahaanForm({super.key});

  @override
  State<InformasiPerusahaanForm> createState() =>
      _InformasiPerusahaanFormState();
}

class _InformasiPerusahaanFormState extends State<InformasiPerusahaanForm> {
  var jabatan = '';
  var lamaBekerja = '';
  var sumberPendapatan = '';
  var pendapatan = '';
  var bank = '';
  final namaUsahaController = TextEditingController();
  final alamatUsahaController = TextEditingController();
  final cabangBankController = TextEditingController();
  final noRekeningController = TextEditingController();
  final pemilikRekeningController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InputText(
          hintText: "Masukan nama usaha/perusahaan",
          title: "NAMA USAHA/PERUSAHAAN",
          controller: namaUsahaController,
        ),
        widget.height(12),
        InputText(
          hintText: "Masukan alamat usaha/perusahaan",
          title: "ALAMAT USAHA/PERUSAHAAN",
          controller: alamatUsahaController,
        ),
        widget.height(12),
        DropDownCustom(
          listData: const [
            "Non-Staf",
            "Staf",
            "Supervisor",
            "Manajer",
            "Direktur",
            "Lainnya"
          ],
          hint: "Pilih jabatan",
          title: "JABATAN",
          value: jabatan.isEmpty ? null : jabatan,
          onChange: (v) {
            setState(() {
              jabatan = v ?? '';
            });
          },
        ),
        widget.height(12),
        DropDownCustom(
          listData: const [
            "< 6 Bulan",
            "6 Bulan - 1 Tahun",
            "1 - 2 Tahun",
            "> 2 Tahun",
          ],
          hint: "Pilih lama bekerja",
          title: "LAMA BEKERJA",
          value: lamaBekerja.isEmpty ? null : lamaBekerja,
          onChange: (v) {
            setState(() {
              lamaBekerja = v ?? '';
            });
          },
        ),
        widget.height(12),
        DropDownCustom(
          listData: const [
            "Gaji",
            "Keuntungan Bisnis",
            "Bunga Tabungan",
            "Warisan",
            "Dana dari orang tua atau anak",
            "Undian",
            "Keuntungan Investasi",
            "Lainnya",
          ],
          hint: "Pilih sumber pendapatan",
          title: "SUMBER PENDAPATAN",
          value: sumberPendapatan.isEmpty ? null : sumberPendapatan,
          onChange: (v) {
            setState(() {
              sumberPendapatan = v ?? '';
            });
          },
        ),
        widget.height(12),
        DropDownCustom(
          listData: const [
            "< 10 Juta",
            "10 - 50 Juta",
            "50 - 100 Juta",
            "100 - 500 Juta",
            "500 Juta - 1 Milyar",
            "> 1 Milyar"
          ],
          hint: "Pilih jumlah pendapatan",
          title: "PENDAPATAN KOTOR PERTAHUN",
          value: jabatan.isEmpty ? null : jabatan,
          onChange: (v) {
            setState(() {
              jabatan = v ?? '';
            });
          },
        ),
        widget.height(12),
        DropDownCustom(
          listData: const [
            "Bank BCA",
            "Bank BRI",
            "Bank Mandiri",
            "Bank BNI",
            "Bank BSI",
          ],
          hint: "Pilih bank",
          title: "NAMA BANK",
          value: bank.isEmpty ? null : bank,
          onChange: (v) {
            setState(() {
              bank = v ?? '';
            });
          },
        ),
        widget.height(12),
        InputText(
          hintText: "Masukan cabang bank",
          title: "CABANG BANK",
          controller: cabangBankController,
        ),
        widget.height(12),
        InputText(
          hintText: "Masukan nomor rekening",
          title: "NOMOR REKENING",
          controller: noRekeningController,
          keyboardType: TextInputType.number,
        ),
        widget.height(12),
        InputText(
          hintText: "Masukan nama pemilik rekening",
          title: "NAMA PEMILIK REKENING",
          controller: pemilikRekeningController,
        ),
        widget.height(24),
        Row(
          children: [
            Expanded(
                child: SecondaryButton(
                    title: "Sebelumnya",
                    onPressed: () {
                      context.read<ProfileBloc>().add(const TabChange(1));
                    })),
            widget.width(8),
            Expanded(
              child: PrimaryButton(title: "Simpan", onPressed: () {}),
            ),
          ],
        ),
        widget.height(24),
      ],
    );
  }
}
