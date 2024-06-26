import 'package:cloud_firestore/cloud_firestore.dart';

class Subject_model {
  final String id;
  final String event;
  final String date;
  final String reg;
  final String summary;
  final String root_cause;
  final String hazard;
  final String risk_index;
  final String location;
  final String recommendation;

  Subject_model({
    required this.id,
    required this.event,
    required this.reg,
    required this.date,
    required this.summary,
    required this.hazard,
    required this.risk_index,
    required this.location,
    required this.recommendation,
    required this.root_cause,
  });

  factory Subject_model.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return Subject_model(
      id: document.id,
      event: data['event'] ?? '',
      date: data['date'] ?? '',
      reg: data['reg'] ?? '',
      summary: data['summary'] ?? '', // Ensure property name matches Firestore field name
      root_cause: data['root_cause'] ?? '', // Ensure property name matches Firestore field name
      hazard: data['hazard'] ?? '', // Ensure property name matches Firestore field name
      risk_index: data['risk_index'] ?? '', // Ensure property name matches Firestore field name
      location: data['location'] ?? '', // Ensure property name matches Firestore field name
      recommendation: data['recommendation'] ?? '', // Ensure property name matches Firestore field name
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'event': event,
      'date': date,
      'reg': reg,
      'summary': summary,
      'root_cause': root_cause,
      'hazard': hazard,
      'risk_index': risk_index,
      'location': location,
      'recommendation': recommendation,
    };
  }
}
