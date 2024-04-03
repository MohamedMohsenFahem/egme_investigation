import 'package:egme_investigation/screens/Subject.dart';
import 'package:flutter/material.dart';

class Subject_model {
  String event;
  String date;
  final String Reg;
  final String summary;
  final String Rod_couse;
  final String hazard;
  final String risk_index;
  final int reason;
  final String location;
  final int recommendation;

  Subject_model({
    required this.event,
    required this.Reg,
    required this.date,
    required this.summary,
    required this.hazard,
    required this.location,
    required this.reason,
    required this.recommendation,
    required this.risk_index,
    required this.Rod_couse
  });
  @override
  List<Object?> get props => [
    event,
    Reg,
    hazard,
    summary
  ];
}
