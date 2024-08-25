part of 'wellness_bloc.dart';

sealed class WellnessState extends Equatable {
  final List<Map<String, dynamic>> listProdukKeuangan = [
    {"image": AppIcon.peopleIcon, "label": "Urun"},
    {"image": AppIcon.hajiIcon, "label": "Pembiayaan\nPorsi Haji"},
    {"image": AppIcon.financeIcon, "label": "Financial\nCheck Up"},
    {"image": AppIcon.carIcon, "label": "Asuransi\nMobil"},
    {"image": AppIcon.propertyIcon, "label": "Asuransi\nProperti"},
  ];
  final List<Map<String, dynamic>> listkategoriPilihan = [
    {"image": AppIcon.hobiIcon, "label": "Hobi"},
    {"image": AppIcon.shirtIcon, "label": "Merchandise"},
    {"image": AppIcon.healtIcon, "label": "Gaya Hidup\nSehat"},
    {"image": AppIcon.pesanIcon, "label": "Konsesling &\nRohani"},
    {"image": AppIcon.brainIcon, "label": "Self\nDevelopment"},
    {"image": AppIcon.cardIcon, "label": "Perencanaan\nKeuangan"},
    {"image": AppIcon.maskerIcon, "label": "Konsultasi\nMedis"},
    {"image": AppIcon.moreIcon, "label": "Lihat Semua"},
  ];
  WellnessState();

  @override
  List<Object> get props => [];
}

final class WellnessInitial extends WellnessState {}
