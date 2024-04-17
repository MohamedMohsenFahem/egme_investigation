import 'package:cloud_firestore/cloud_firestore.dart';

class Subject_model {
  final String event;
  final String date;
  final String reg;
  final String summary;
  final String rod_cause;
  final String hazard;
  final String risk_index;
  final String location;
  final String recommendation;

  Subject_model({
    required this.event,
    required this.reg,
    required this.date,
    required this.summary,
    required this.hazard,
    required this.risk_index,
    required this.location,
    required this.recommendation,
    required this.rod_cause,
  });

  factory Subject_model.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return Subject_model(
      event: data['event'] ?? '', // Ensure property name matches Firestore field name
      date: data['date'] ?? '', // Ensure property name matches Firestore field name
      reg: data['reg'] ?? '', // Ensure property name matches Firestore field name
      summary: data['summary'] ?? '', // Ensure property name matches Firestore field name
      rod_cause: data['rod_cause'] ?? '', // Ensure property name matches Firestore field name
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
      'rod_cause': rod_cause,
      'hazard': hazard,
      'risk_index': risk_index,
      'location': location,
      'recommendation': recommendation,
    };
  }
}
