part of 'dashboard_bloc.dart';

sealed class DashboardState extends Equatable {
  final List<Map<String, dynamic>> listItem = [
    {"icon": Mdi.home_outline, "label": "Beranda"},
    {"icon": Ep.search, "label": "Cari"},
    {"icon": Bi.cart_plus, "label": "Keranjang"},
    {"icon": Mdi.box_check_outline, "label": "Daftar Transaksi"},
    {"icon": Mdi.voucher_outline, "label": "Voucher Saya"},
    {"icon": Carbon.location, "label": "Alamat Pengiriman"},
    {"icon": Octicon.people_24, "label": "Daftar Teman"},
  ];
  DashboardState();
  @override
  List<Object> get props => [];
}

final class DashboardInitial extends DashboardState {}

final class DasboardExpand extends DashboardState {
  final bool isExpand;
  DasboardExpand({this.isExpand = false});

  @override
  List<Object> get props => [isExpand];
}

final class DasboardTab extends DashboardState {
  final int index;
  DasboardTab({this.index = 0});

  @override
  List<Object> get props => [index];
}
