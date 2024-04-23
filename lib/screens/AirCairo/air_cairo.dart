import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egme_investigation/screens/AirCairo/add_subjectAir.dart';
import 'package:egme_investigation/screens/egme/Items.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import '../subject/Subject_model.dart';

class AirCairo extends StatefulWidget {
  AirCairo({super.key});

  @override
  State<AirCairo> createState() => _AirCairoState();
}

List<String> listReg = <String>[
  'SU-BPU',
  'SU-BPV',
  'SU-BPW',
  'SU-BPX',
  'SU-BTM',
  'SU-BUJ',
  'SU-BUU',
  'SU-BUV',
  'SU-BVG',
  'SU-BVH',
  'SU-BVI',
  'SU-BUK',
  'SU-BUL',
  'SU-BUM',
  'SU-BUN',
  'SU-BUP',
  'SU-BUQ',
  'SU-BUR',
  'SU-BUS',
  'SU-BUT',
  'SU-BUX',
  'SU-BUY',
  'SU-BUZ',
  'SU-BUJ',
  'SU-BUK'
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
  'Wrong analysis for Data Base.',
  'No/Poor monitor for safety actions.',
];

class _AirCairoState extends State<AirCairo> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateFormat dateFormat = DateFormat("dd/MM/yyyy");
  bool _showSearchSubject = false;
  bool _showSearchDate = false;
  bool _showSearchHazard = false;
  bool _showSearchLocation = false;
  bool _showSearchReg = false;

  List<Subject_model>? subjects = [];
  List<Subject_model>? _foundSubject;
  late String HazardSearch;
  String searchValue = '';
  String dropdownValueHazard = ListHazard.first;
  String dropdownValueReg = listReg.first;
  String dropdownValueLocation = listLocation.first;
  CollectionReference _db =
      FirebaseFirestore.instance.collection('SubjectAirCairo');
  late Stream<QuerySnapshot> _dbSubject;
  @override
  void initState() {
    super.initState();
    _foundSubject = subjects;
    _dbSubject = _db.snapshots();
    _fetchData();
  }

  void _runFilterHazard(String enteredKeyword) {
    List<Subject_model>? results = [];
    if (enteredKeyword.isEmpty) {
      results = subjects;
    } else {
      results = subjects
          ?.where((user) =>
              user.hazard.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundSubject = results;
    });
  }

  void _runFilterSubject(String enteredKeyword) {
    List<Subject_model>? results = [];
    if (enteredKeyword.isEmpty) {
      results = subjects;
    } else {
      results = subjects
          ?.where((user) =>
              user.event.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundSubject = results;
    });
  }

  void _runFilterReg(String enteredKeyword) {
    setState(() {
      if (enteredKeyword.isEmpty) {
        _foundSubject = subjects;
      } else {
        _foundSubject = subjects
            ?.where((user) =>
                user.reg.toLowerCase().contains(enteredKeyword.toLowerCase()))
            .toList();
      }
    });
  }

  void _runFilterLocation(String enteredKeyword) {
    setState(() {
      if (enteredKeyword.isEmpty) {
        _foundSubject = subjects;
      } else {
        _foundSubject = subjects
            ?.where((user) => user.location
                .toLowerCase()
                .contains(enteredKeyword.toLowerCase()))
            .toList();
      }
    });
  }

  void _fetchData() async {
    try {
      QuerySnapshot querySnapshot = await _db.get();
      List<Subject_model> fetchedSubjects = querySnapshot.docs.map((doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        print('Fetched data: $data');
        return Subject_model(
          event: data['event'] ?? '',
          reg: data['reg'] ?? '',
          date: data['date'] ?? '',
          summary: data['summary'] ?? '',
          hazard: data['hazard'] ?? '',
          location: data['location'] ?? '',
          recommendation: data['recommendation'] ?? '',
          risk_index: data['risk_index'] ?? '',
          rod_cause: data['rod_cause'] ?? '',
        );
      }).toList();

      setState(() {
        subjects = fetchedSubjects;
        _foundSubject = subjects;
      });
    } catch (e) {
      print("Error fetching data: $e");
    }
  }
  void _runFilterDate(String enteredKeyword) {
    setState(() {
      print(enteredKeyword);
      if (enteredKeyword.isEmpty) {
        _foundSubject = subjects;
      } else {
        _foundSubject = subjects
            ?.where((subject) => subject.date == enteredKeyword)
            .toList();
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.lightBlue[50],
        title: Text('Air Cairo'),
      ),
      body: Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _showSearchDate = !_showSearchDate;
                          _showSearchLocation = false;
                          _showSearchReg = false;
                          _showSearchHazard = false;
                          _showSearchSubject = false;
                          print('pressed $_showSearchDate $_showSearchHazard');
                        });
                      },
                      child: Text(
                        'Date',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          print(
                              'pressed subject $_showSearchDate $_showSearchSubject');

                          _showSearchSubject =
                          !_showSearchSubject; // Toggle the search bar visibility
                          _showSearchLocation = false;
                          _showSearchReg = false;
                          _showSearchHazard = false;
                          _showSearchDate = false;
                        });
                      },
                      child: Text(
                        'Subject',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          print(
                              'pressed hazard $_showSearchDate $_showSearchHazard');
                          _showSearchHazard =
                          !_showSearchHazard; // Toggle the search bar visibility
                          _showSearchLocation = false;
                          _showSearchReg = false;
                          _showSearchDate = false;
                          _showSearchSubject = false;
                        });
                      },
                      child: Text(
                        'Hazard',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _showSearchReg =
                          !_showSearchReg; // Toggle the search bar visibility
                          _showSearchLocation = false;
                          _showSearchSubject = false;
                          _showSearchHazard = false;
                          _showSearchDate = false;
                        });
                      },
                      child: Text(
                        'Reg',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )),
                  SizedBox(
                    width: 12,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _showSearchLocation =
                          !_showSearchLocation; // Toggle the search bar visibility
                          _showSearchSubject = false;
                          _showSearchReg = false;
                          _showSearchHazard = false;
                          _showSearchDate = false;
                        });
                      },
                      child: Text(
                        'Location',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )),
                ],
              ),
            ),

            if (_showSearchDate == true)
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
                    _runFilterDate(dateString);
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
            if (_showSearchSubject)
              Container(
                alignment: AlignmentDirectional.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  onChanged: (value) => _runFilterSubject(value),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      labelText: 'Search By Subject',
                      suffixIcon: Icon(Icons.search)),
                ),
              ),
            if (_showSearchHazard)
              SizedBox(
                height: 50,
                child: DropdownButton<String>(
                  value: dropdownValueHazard,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  itemHeight: 70,
                  borderRadius: BorderRadius.circular(16),
                  alignment: Alignment.center,
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValueHazard = value!;
                      _runFilterHazard(value);
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
            if (_showSearchLocation)
              SizedBox(
                height: 50,
                child: DropdownButton<String>(
                  value: dropdownValueLocation,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  borderRadius: BorderRadius.circular(16),
                  alignment: Alignment.center,
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValueLocation = value!;
                      _runFilterLocation(value);
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
            if (_showSearchReg)
              SizedBox(
                height: 50,
                child: DropdownButton<String>(
                  value: dropdownValueReg,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  borderRadius: BorderRadius.circular(16),
                  alignment: Alignment.center,
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValueReg = value!;
                      _runFilterReg(value);
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: StreamBuilder<QuerySnapshot>(
                      stream: _dbSubject,
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Center(child: Text(snapshot.error.toString()));
                        }

                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        }
                        return ListView.builder(
                          itemCount: _foundSubject!.length,
                          itemBuilder: (BuildContext context, int index) {
                            // Pass each Subject_model object to customListTile
                            return customListTile(
                                _foundSubject![index], context);
                          },
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddSubjectAir()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

}
