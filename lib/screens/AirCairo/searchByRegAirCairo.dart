import 'package:egme_investigation/screens/egme/model_egma.dart';
import 'package:flutter/material.dart';


List<String> list = <String>[
  'SU-BPU', 'SU-BPV', 'SU-BPW', 'SU-BPX', 'SU-BTM', 'SU-BUJ', 'SU-BUU',
  'SU-BUV', 'SU-BVG', 'SU-BVH', 'SU-BVI', 'SU-BUK', 'SU-BUL', 'SU-BUM',
  'SU-BUN', 'SU-BUP', 'SU-BUQ', 'SU-BUR', 'SU-BUS', 'SU-BUT', 'SU-BUX',
  'SU-BUY', 'SU-BUZ', 'SU-BUJ', 'SU-BUK'
];
class DropdownRegAirCairo extends StatefulWidget {
  final List<Subject_model>? subject;
  DropdownRegAirCairo({super.key ,required this.subject});
  @override
  State<DropdownRegAirCairo> createState() => _DropdownRegAirCairoState();
}

class _DropdownRegAirCairoState extends State<DropdownRegAirCairo> {
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
