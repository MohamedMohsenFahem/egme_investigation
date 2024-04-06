import 'package:flutter/material.dart';

import '../Subject_model.dart';

List<String> list = <String>[
  'SU-GDL', 'SU-GDM','SU-GDN','SU-GDO','SU-GDP','SU-GDR', 'SU-GER', 'SU-GES',
  'SU-GET', 'SU-GEU', 'SU-GEV', 'SU-GEW','SU-GFX', 'SU-GDS', 'SU-GDT',
  'SU-GDU', 'SU-GDV', 'SU-GCG', 'SU-GCH', 'SU-GCI', 'SU-GCK', 'SU-GAS',
  'SU-GCE', 'SU-GCF', 'SU-GCJ', 'SU-GCP','SU-GCM', 'SU-GCN',
  'SU-GCO', 'SU-GCR', 'SU-GCS', 'SU-GCZ', 'SU-GDA', 'SU-GDB', 'SU-GDC',
  'SU-GDD', 'SU-GDE', 'SU-GDX', 'SU-GDY', 'SU-GDZ', 'SU-GEA', 'SU-GEB', 'SU-GEC',
  'SU-GED', 'SU-GEE', 'SU-GEF', 'SU-GEG', 'SU-GEH', 'SU-GEI', 'SU-GEJ', 'SU-GEK',
  'SU-GEL', 'SU-GEM', 'SU-GEN','SU-GEX', 'SU-GEY', 'SU-GEZ', 'SU-GFA', 'SU-GFB',
  'SU-GFC', 'SU-GFD', 'SU-GFE', 'SU-GFF', 'SU-GFG', 'SU-GFH', 'SU-GFI', 'SU-GFJ',
  'SU-GFK', 'SU-GFL', 'SU-GFM', 'SU-GFN', 'SU-GFO', 'SU-GFP', 'SU-GFQ', 'SU-GFR',
  'SU-GFS', 'SU-GFT', 'SU-GFU', 'SU-GFV', 'SU-GFW', 'SU-GBZ', 'SU-GCA', 'SU-GCB',
  'SU-GCD', 'SU-GBR', 'SU-GBS', 'SU-GEO', 'SU-GEP', 'SU-GDH', 'SU-GDJ', 'SU-GDK'


];
class DropdownReg extends StatefulWidget {
  final List<Subject_model>? subject;
   DropdownReg({super.key ,required this.subject});


  @override

  State<DropdownReg> createState() => _DropdownRegState();
}

class _DropdownRegState extends State<DropdownReg> {
  List<Subject_model>? _foundSubject = [];

  void initState() {
    _foundSubject = widget.subject;
    super.initState();
  }
  void _runFilterReg(String enteredKeyword) {
    List<Subject_model>? results = [];
      results = widget.subject
          ?.where((user) =>
          user.Reg.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();


  }
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      underline: Container(
        height: 5,
        width: 50,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
          _runFilterReg(value);
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
