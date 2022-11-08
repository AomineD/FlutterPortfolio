class ExperienceModel {
  final String title;
  final String date;
  final String positionInCompany;
  final String icon;
  final String desc;
  bool alternativeCardColor = false;
  ExperienceModel(
      this.title, this.icon, this.date, this.positionInCompany, this.desc,
      {required this.alternativeCardColor});
}
