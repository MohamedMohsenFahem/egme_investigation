import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egme_investigation/screens/Subject/Subject_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';


class AddSubjectOther extends StatefulWidget {
  const AddSubjectOther({super.key});

  @override
  State<AddSubjectOther> createState() => _AddSubjectOtherState();
}
List<String> listReg = <String>[
  'SU-GDL',
  'SU-GDM',
  'SU-GDN',
  'SU-GDO',
  'SU-GDP',
  'SU-GDR',
  'SU-GER',
  'SU-GES',
  'SU-GET',
  'SU-GEU',
  'SU-GEV',
  'SU-GEW',
  'SU-GFX',
  'SU-GDS',
  'SU-GDT',
  'SU-GDU',
  'SU-GDV',
  'SU-GCG',
  'SU-GCH',
  'SU-GCI',
  'SU-GCK',
  'SU-GAS',
  'SU-GCE',
  'SU-GCF',
  'SU-GCJ',
  'SU-GCP',
  'SU-GCM',
  'SU-GCN',
  'SU-GCO',
  'SU-GCR',
  'SU-GCS',
  'SU-GCZ',
  'SU-GDA',
  'SU-GDB',
  'SU-GDC',
  'SU-GDD',
  'SU-GDE',
  'SU-GDX',
  'SU-GDY',
  'SU-GDZ',
  'SU-GEA',
  'SU-GEB',
  'SU-GEC',
  'SU-GED',
  'SU-GEE',
  'SU-GEF',
  'SU-GEG',
  'SU-GEH',
  'SU-GEI',
  'SU-GEJ',
  'SU-GEK',
  'SU-GEL',
  'SU-GEM',
  'SU-GEN',
  'SU-GEX',
  'SU-GEY',
  'SU-GEZ',
  'SU-GFA',
  'SU-GFB',
  'SU-GFC',
  'SU-GFD',
  'SU-GFE',
  'SU-GFF',
  'SU-GFG',
  'SU-GFH',
  'SU-GFI',
  'SU-GFJ',
  'SU-GFK',
  'SU-GFL',
  'SU-GFM',
  'SU-GFN',
  'SU-GFO',
  'SU-GFP',
  'SU-GFQ',
  'SU-GFR',
  'SU-GFS',
  'SU-GFT',
  'SU-GFU',
  'SU-GFV',
  'SU-GFW',
  'SU-GBZ',
  'SU-GCA',
  'SU-GCB',
  'SU-GCD',
  'SU-GBR',
  'SU-GBS',
  'SU-GEO',
  'SU-GEP',
  'SU-GDH',
  'SU-GDJ',
  'SU-GDK'
];
List<String> listLocation = <String>[
  'Line shifts',
  ' Weeky check',
  'Tech.support',
  'Line jcc',
  ' Mcc',
  'Bm H6000',
  'BM H7000',
  'BM H8000',
  'ENGINE SHOP',
  'MECH.SHOP',
  'ELECT .SHOP',
  ' BRAKE. SHOP',
  'IERA SHOPS',
  'Atic shop',
  'Stores',
  'Incoming inspection',
  'Logistics',
  'Repair and warranty',
  'Came',
  'Tech.services',
  'Safety',
  'Quality',
];
List<String> ListHazard = <String>[
  'Equipment/part not installed',
  'Wrong equipment/part installed',
  'Wrong orientation',
  'Improper location',
  'Incomplete installation',
  'Extra parts installed',
  'Access not closed',
  'System/equipment not deactivated /reactivated',
  'Damaged on installation',
  'Cross connection',
  'Not enough fluid',
  'Too much fluid',
  'Wrong fluid type',
  'Required servicing not performed',
  'Access not closed',
  'System/equipment notdeactivated/reactivated',
  'Unapproved Repair',
  'Incomplete Repair',
  'Incorrect Repair',
  'Did not detect fault',
  'Not found by fault isolation',
  'Not found by operational/functional test',
  'Not found by inspection',
  'Access not closed',
  'System/equipment not deactivated /reactivated',
  'MEL interpretation/application/removal',
  'CDL interpretation/application/removal',
  'Incorrectly deferred/controlled defect',
  'Technical(aircraft) log use and oversight',
  'Maintenance (Mx) task not correctly documented',
  'Not authorized/qualified/certified to do task',
  'Material / Tools left in aircraft/engine',
  'Debris on ramp',
  'Debris falling into open systems',
  'Tools/equipment used improperly',
  'Defective tools/equipment used',
  'Struck by/against',
  'Pulled/pushed/drove into',
  'Using GSE without proper approval',
  'Slip/trip/fall',
  'Caught in/on/between',
  'Struck by/against',
  'Hazard contacted (e.g., electricity, \nhot or cold surfaces, and sharp surfaces)',
  'Hazardous substance exposure (e.g.,toxic \nor noxious substances)',
  'Hazardous thermal environment exposure\n(heat,cold, or humidity)',
  'Exceeding legal extra hours',
  'Pandemic',
  'Rain storm',
  'Sand storm',
  'Lightning storm',
  'FOG',
  'A/C Maintenance Program Control error',
  'Wrong / Incomplete / late reply to \na technical query',
  'TCI Monitoring error',
  'OVER DUE AD/ROUTINE TASK',
  'Information with ambiguities',
  'Scheduled task omitted/late/incorrect',
  'Airworthiness data interpretation',
  'Airworthiness Directive overrun',
  'Modification control',
  'Configuration control',
  'Records control',
  'Component robbery control',
  'Maintenance (Mx) information system \n(entry or update)',
  'Time expired part on board aircraft',
  'Part defected during handling',
  'Zero hours part',
  'Part stored under wrong PN',
  'Report not received within specified period',
  'Report not delivered to authority\n within specified period',
  'Poor Generic / Specific hazard identified',
  'Poor Risk index identified',
  'Wrong report category identified',
  'Poor/complicated reportig system',
  'Wrong / incomplete root cause identified',
  'Wrong / incomplete recommendations',
  'Wrong identification of Spacific Hazard type',
  'Inaccurate or incomplete risk assessments',
  'Failure to consider the dynamic nature \n of operational environments when assessing risks.',
  'Inconsistent criteria for assessing the \n severityand Probabilty of identified risks.',
  'Inadequate monitoring of safety\n performance indicators.',
  'Inaccurate or delayed reporting \nof safety performance indicators.',
  'Lack of feedback loops to assess \nthe effectiveness of safety assurance activities.',
  'Failure to adapt safety assurance processes\n in response to changes in operations orregulations.',
  'Insufficient data analysis tools\n to identifyemerging trends.',
  'Wrong analysis for Data Base',
  'No/Poor monitor for safety actions',
];

class _AddSubjectOtherState extends State<AddSubjectOther> {
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
  String textDone = '';
  String dropdownValueReg = listReg.first;
  String dropdownValueHazard = ListHazard.first;
  String dropdownValueLocation = listLocation.first;
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
            //Event
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
            // Summary
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
            //Reg
            Container(
              child: Row(
                children: [
                  Icon(Icons.menu),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Reg',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: DropdownButton<String>(
                      value: dropdownValueReg,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      borderRadius: BorderRadius.circular(16),
                      dropdownColor: Color(0xFFB3E5FC),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValueReg = value!;
                          _regController.text = value;
                        });
                      },
                      items:
                      listReg.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            //Hazard
            Container(
              child: Row(
                children: [
                  Icon(Icons.menu),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Hazard',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: DropdownButton<String>(
                      value: dropdownValueHazard,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      itemHeight: 70,
                      borderRadius: BorderRadius.circular(16),
                      dropdownColor: Color(0xFFB3E5FC),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValueHazard = value!;
                          _HazardController.text = value;
                        });
                      },
                      items: ListHazard.map<DropdownMenuItem<String>>(
                              (String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //Location
            Container(
              child: Row(
                children: [
                  Icon(Icons.menu),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: DropdownButton<String>(
                      value: dropdownValueLocation,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      borderRadius: BorderRadius.circular(16),
                      dropdownColor: Color(0xFFB3E5FC),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValueLocation = value!;
                          _locationController.text = value;
                        });
                      },
                      items: listLocation
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //Date
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
            //Risk index
            TextField(
                controller: _riskIndexController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Enter Risk Index',
                    labelText: 'Risk Index')),
            const SizedBox(height: 20),
            //root cause
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
            // Recommendation
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
            // Add subject
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
                  await _db.collection('SubjectOther').add(Subject.toJson());
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
                  textDone='Subject add successfully';
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
              Text(textDone,
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
