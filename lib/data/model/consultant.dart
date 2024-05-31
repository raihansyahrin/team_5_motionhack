class ConsultantModel {
  final int id;
  final String nama;
  final String posisi;
  final String pic;
  final bool? isConsultant;

  ConsultantModel({
    required this.id,
    required this.nama,
    required this.posisi,
    required this.pic,
    required this.isConsultant,
  });
}

var consultantList = [
  ConsultantModel(
      id: 1,
      nama: 'Jabbar',
      posisi: 'Konsultan Keuangan',
      pic: 'https://randomuser.me/api/portraits/men/14.jpg',
      isConsultant: true),
  ConsultantModel(
      id: 2,
      nama: 'William',
      posisi: 'Konsultan Pemasaran',
      pic: 'https://randomuser.me/api/portraits/men/12.jpg',
      isConsultant: true),
  ConsultantModel(
      id: 3,
      nama: 'Syahrin',
      posisi: 'Konsultan Bisnis Umum',
      pic: 'https://randomuser.me/api/portraits/men/13.jpg',
      isConsultant: true),
  ConsultantModel(
      id: 4,
      nama: 'Aqeel',
      posisi: 'Konsultan Legal',
      pic: 'https://randomuser.me/api/portraits/men/15.jpg',
      isConsultant: true),
  ConsultantModel(
      id: 5,
      nama: 'Nabiel',
      posisi: 'Konsultan Manajemen Resiko',
      pic: 'https://randomuser.me/api/portraits/men/5.jpg',
      isConsultant: true),
];
