import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egme_investigation/screens/Subject/Subject_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';




class AddSubjectAir extends StatefulWidget {
  const AddSubjectAir({super.key});

  @override
  State<AddSubjectAir> createState() => _AddSubjectAirState();
}

class _AddSubjectAirState extends State<AddSubjectAir> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateFormat dateFormat = DateFormat("dd/MM/yyyy");

  final TextEditingController _eventController = TextEditingController();
  final TextEditingController _regController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  final TextEditingController _summaryController = TextEditingController();
  TextEditingController _HazardController = TextEditingController();
  final TextEditingController _riskIndexController = TextEditingController();
  final TextEditingController _rodCauseController = TextEditingController();
  final TextEditingController _recomendationController = TextEditingController();
  final _db = FirebaseFirestore.instance;
  bool _loading = false;
  bool _error = false;
  String texterror = '';
  bool _done = false;
  String textdone = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(height: 20),
            TextField(
              controller: _eventController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title_outlined),
                  hintText: 'Enter Event',
                  labelText: 'Event'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _summaryController,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title_outlined),
                  hintText: 'Enter summary',
                  labelText: 'Summary'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _regController,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title_outlined),
                  hintText: 'Enter Reg',
                  labelText: 'Reg'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _HazardController,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title_outlined),
                  hintText: 'Enter Hazard',
                  labelText: 'Hazard'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _locationController,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title_outlined),
                  hintText: 'Enter Location',
                  labelText: 'Location'),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _dateController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(
                    Icons.date_range_outlined,
                  ),
                  hintText: 'Enter Date   EX:DD/MM/YY',
                  labelText: 'Date'),
            ),
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 20),
              lastDay: DateTime.now(),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              onHeaderTapped: (focusedDay) {
                // Show date picker on header tapped
                showDatePicker(
                  context: context,
                  initialDate: focusedDay,
                  firstDate: DateTime.utc(2010, 1, 1),
                  lastDate: DateTime.now(),
                ).then((selectedDate) {
                  if (selectedDate != null) {
                    setState(() {
                      _focusedDay = selectedDate;
                    });
                  }
                });
              },
              selectedDayPredicate: (day) {
                // Use `selectedDayPredicate` to determine which day is currently selected.
                // If this returns true, then `day` will be marked as selected.
                // Using `isSameDay` is recommended to disregard
                // the time-part of compared DateTime objects.
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(_selectedDay, selectedDay)) {
                  // Call `setState()` when updating the selected day
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                  String dateString = dateFormat.format(_selectedDay!);
                  _dateController.text = dateString;
                }
              },
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  // Call `setState()` when updating calendar format
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                // No need to call `setState()` here
                _focusedDay = focusedDay;
              },
            ),
            const SizedBox(height: 20),
            TextField(
                controller: _riskIndexController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter Risk Index',
                    labelText: 'Risk Index')),
            const SizedBox(height: 20),
            TextField(
                controller: _rodCauseController,
                keyboardType: TextInputType.multiline,
                maxLines: 3,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    prefixIcon: Icon(Icons.title_outlined),
                    hintText: 'Enter Rod Cause',
                    labelText: 'Rod Cause')),
            const SizedBox(height: 20),
            TextField(
              controller: _recomendationController,
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title_outlined),
                  hintText: 'Enter Recommendation',
                  labelText: 'Recommendation'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  _loading = false;
                  _error = false;
                  texterror = '';
                });
                String event = _eventController.text.trim();
                if (event.isEmpty) {
                  setState(() {
                    _error = true;
                    texterror = 'Event is empty';
                  });
                  return;
                }
                String summary = _summaryController.text.trim();
                if (summary.isEmpty) {
                  setState(() {
                    _error = true;
                    texterror = 'Summary is empty';
                  });
                  return;
                }
                String riskIndex = _riskIndexController.text.trim();
                if (riskIndex.isEmpty) {
                  setState(() {
                    _error = true;
                    texterror = 'Risk Index is empty';
                  });
                  return;
                }
                setState(() {
                  _loading = true;
                });
                Subject_model Subject = Subject_model(
                  event: _eventController.text.trim(),
                  reg: _regController.text.trim(),
                  date: _dateController.text.trim(),
                  summary: _summaryController.text.trim(),
                  hazard: _HazardController.text.trim(),
                  location: _locationController.text.trim(),
                  recommendation: _recomendationController.text.trim(),
                  risk_index: _riskIndexController.text.trim(),
                  rod_cause: _rodCauseController.text.trim(),
                );
                try {
                  await _db.collection('SubjectAirCairo').add(Subject.toJson());
                  Get.snackbar('Success', 'Subject has been added',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.white,
                      colorText: Colors.black);
                } catch (error) {
                  Get.snackbar(
                    "error",
                    "something went wrong",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.white,
                    colorText: Colors.black,
                  );
                };
                setState(() {
                  _loading = false;
                  _done=true;
                  textdone='Subject add successfully';
                  // dropdownValueLocation=listReg.first;
                  //dropdownValueReg= listLocation.first;
                  _locationController.clear();
                  _regController.clear();
                  _eventController.clear();
                  _dateController.clear();
                  _summaryController.clear();
                  _HazardController.clear();
                  _recomendationController.clear();
                  _riskIndexController.clear();
                  _rodCauseController.clear();
                });
              },
              style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(const Size(250, 10)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(color: Colors.deepPurple)))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Add Subject',
                  style: TextStyle(
                    color: Color(0xFF0d47A1),
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            if (_loading) const SpinKitDoubleBounce(color: Color(0xFF0d47A1)),
            if (_error)
              Text(texterror,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    color: Colors.red,
                  )),
            if (_done)
              Text(textdone,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Cairo',
                    color: Colors.green,
                  )),
          ]),
        ),
      ),
    );
  }
}
