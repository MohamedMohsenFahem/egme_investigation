
class Subject_model {
  String event;
  String date;
  final String Reg;
  final String summary;
  final String Rod_couse;
  final String hazard;
  final String risk_index;
  final String location;
  final String recommendation;

  Subject_model({
    required this.event,
    required this.Reg,
    required this.date,
    required this.summary,
    required this.hazard,
    required this.location,
    required this.recommendation,
    required this.risk_index,
    required this.Rod_couse
  });
  List<Object?> get props => [
    event,
    Reg,
    hazard,
    summary
  ];
}
