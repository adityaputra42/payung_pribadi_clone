import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/fa.dart';
import 'package:image_picker/image_picker.dart';
import 'package:payung_pribadi_clone/core/common/widget/secondary_button.dart';
import 'package:payung_pribadi_clone/core/theme/app_color.dart';
import 'package:payung_pribadi_clone/core/theme/app_font.dart';
import 'package:payung_pribadi_clone/core/utils/double_extension.dart';
import 'package:payung_pribadi_clone/core/utils/pick_image.dart';

import '../../../../../core/common/widget/drop_down.dart';
import '../../../../../core/common/widget/input_text.dart';
import '../../../../../core/common/widget/primary_button.dart';
import '../../bloc/profile_bloc.dart';

class AlamatPribadiForm extends StatefulWidget {
  const AlamatPribadiForm({super.key});

  @override
  State<AlamatPribadiForm> createState() => _AlamatPribadiFormState();
}

class _AlamatPribadiFormState extends State<AlamatPribadiForm> {
  final nikController = TextEditingController();
  final alamatController = TextEditingController();
  final kodePosController = TextEditingController();

  var provinsi = '';
  var kota = '';
  var kecamatan = '';
  var isCheck = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).cardColor),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  pickImage(ImageSource.camera);
                },
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColor.primaryColor.withOpacity(0.2)),
                      child: const Iconify(
                        Fa.id_card,
                        size: 24,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    widget.width(8),
                    Expanded(
                      child: Text(
                        "Unggah KTP",
                        style: AppFont.medium14
                            .copyWith(color: Theme.of(context).indicatorColor),
                      ),
                    )
                  ],
                ),
              ),
              widget.height(8),
              InputText(
                hintText: "Masukan nik",
                title: "NIK",
                controller: nikController,
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
        widget.height(12),
        InputText(
          hintText: "Masukan alamat lengkap",
          title: "ALAMAT SESUAI KTP",
          controller: alamatController,
        ),
        widget.height(12),
        DropDownCustom(
          listData: const [
            "Banten",
            "DKI Jakarta",
            "Jawa Barat",
            "Jawa Tengah",
            "Jawa Timur",
            "DI Yogyakarta"
          ],
          hint: "Pilih provinsi",
          title: "PROVINSI",
          value: provinsi.isEmpty ? null : provinsi,
          onChange: (v) {
            setState(() {
              provinsi = v ?? '';
            });
          },
        ),
        widget.height(12),
        DropDownCustom(
          listData: const [
            "Semarang",
            "Kendal",
            "Pekalongan",
            "Brebes",
            "Kebumen",
            "Cilacap",
            "Banyumas",
            "Salatiga",
            "Boyolali",
            "Karanganyar",
            "Solo",
            "Klaten",
            "Magelang",
            "Purworejo",
            "Purwookerto"
          ],
          hint: "Pilih kota",
          title: "KOTA",
          value: provinsi.isEmpty ? null : provinsi,
          onChange: (v) {
            setState(() {
              provinsi = v ?? '';
            });
          },
        ),
        widget.height(12),
        DropDownCustom(
          listData: const [
            "Tembalang",
            "Banyumanik",
            "Semarang Barat",
            "Semarang Timur"
          ],
          hint: "Pilih kecamatan",
          title: "KECAMATAN",
          value: provinsi.isEmpty ? null : provinsi,
          onChange: (v) {
            setState(() {
              provinsi = v ?? '';
            });
          },
        ),
        widget.height(12),
        InputText(
          hintText: "Masukan kode pos",
          title: "KODE POS",
          controller: alamatController,
        ),
        widget.height(8),
        CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: isCheck,
          onChanged: (v) {
            setState(() {
              isCheck = v ?? false;
            });
          },
          contentPadding: EdgeInsets.zero,
          title: Text(
            "Alamat domisili sama dengan alamat ktp",
            style: AppFont.medium12
                .copyWith(color: Theme.of(context).indicatorColor),
          ),
        ),
        widget.height(24),
        Row(
          children: [
            Expanded(
                child: SecondaryButton(
                    title: "Sebelumnya",
                    onPressed: () {
                      context.read<ProfileBloc>().add(const TabChange(0));
                    })),
            widget.width(8),
            Expanded(
              child: PrimaryButton(
                  title: "Selanjutnya",
                  onPressed: () {
                    context.read<ProfileBloc>().add(const TabChange(2));
                  }),
            ),
          ],
        ),
        widget.height(24),
      ],
    );
  }
}
