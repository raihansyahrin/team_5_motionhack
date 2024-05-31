class InvestorModel {
  final int id;
  final String nama;
  final String posisi;
  final String pic;
  final bool? isConsultant;

  InvestorModel({
    required this.id,
    required this.nama,
    required this.posisi,
    required this.pic,
    required this.isConsultant,
  });
}

var investorList = [
  InvestorModel(
      id: 1,
      nama: 'Carla',
      posisi: 'PT.Sampoerna',
      pic: 'https://randomuser.me/api/portraits/men/1.jpg',
      isConsultant: false),
  InvestorModel(
      id: 2,
      nama: 'Franco',
      posisi: 'Investor Retail',
      pic: 'https://randomuser.me/api/portraits/men/2.jpg',
      isConsultant: false),
  InvestorModel(
      id: 3,
      nama: 'Syahrin',
      posisi: 'Investor Venture Capital',
      pic: 'https://randomuser.me/api/portraits/men/3.jpg',
      isConsultant: false),
  InvestorModel(
      id: 4,
      nama: 'Aqeel',
      posisi: 'Investor Logistic',
      pic: 'https://randomuser.me/api/portraits/men/4.jpg',
      isConsultant: false),
  InvestorModel(
      id: 5,
      nama: 'Nabiel',
      posisi: 'Investor Tech',
      pic: 'https://randomuser.me/api/portraits/men/5.jpg',
      isConsultant: false),
  InvestorModel(
      id: 6,
      nama: 'Afny',
      posisi: 'Investor Retail',
      pic: 'https://randomuser.me/api/portraits/women/1.jpg',
      isConsultant: false),
  InvestorModel(
      id: 7,
      nama: 'Azizah',
      posisi: 'Investor Venture Capital',
      pic: 'https://randomuser.me/api/portraits/women/2.jpg',
      isConsultant: false),
  InvestorModel(
      id: 8,
      nama: 'Clarissa',
      posisi: 'Investor Tech',
      pic: 'https://randomuser.me/api/portraits/men/6.jpg',
      isConsultant: false),
  InvestorModel(
      id: 9,
      nama: 'Bowo',
      posisi: 'Investor Logistic',
      pic: 'https://randomuser.me/api/portraits/men/7.jpg',
      isConsultant: false),
  InvestorModel(
      id: 10,
      nama: 'Prawira',
      posisi: 'Investor PT.Gudang Garam',
      pic: 'https://randomuser.me/api/portraits/men/8.jpg',
      isConsultant: false),
  InvestorModel(
      id: 11,
      nama: 'Prayoga',
      posisi: 'Investor PT.Cinta Sejati',
      pic: 'https://randomuser.me/api/portraits/men/9.jpg',
      isConsultant: false),
];
