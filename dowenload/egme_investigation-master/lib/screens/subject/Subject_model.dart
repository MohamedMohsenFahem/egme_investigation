
import 'package:cloud_firestore/cloud_firestore.dart';

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
   toJson() {
    return {
      'Event': event,
      'date': date,
      'Reg': Reg,
      'summary': summary,
      'Rod_couse': Rod_couse,
      'hazard': hazard,
      'risk_index': risk_index,
      'location': location,
      'recommendation': recommendation,
    };
  }
  factory Subject_model.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return Subject_model(
      event: data['event'],
      date: data['date'],
      Reg: data['Reg'],
      summary: data['summary'],
      Rod_couse: data['Rod_couse'],
      hazard: data['hazard'],
      risk_index: data['risk_index'],
      location: data['location'],
      recommendation: data['recommendation'],
    );
  }

}
