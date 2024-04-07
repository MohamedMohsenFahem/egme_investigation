import 'package:egme_investigation/screens/egme/model_egma.dart';
import 'package:flutter/material.dart';


List<String> list = <String>[
  'BPU', 'BPV', 'BPW', 'BPX', 'BTM', 'BUJ', 'BUU',
  'BUV', 'BVG', 'BVH', 'BVI', 'BUK', 'BUL', 'BUM',
  'BUN', 'BUP', 'BUQ', 'BUR', 'BUS', 'BUT', 'BUX',
  'BUY', 'BUZ', 'BUJ', 'BUK'
];
class DropdownRegOther extends StatefulWidget {
  final List<Subject_model>? subject;
   DropdownRegOther({super.key ,required this.subject});
  @override
  State<DropdownRegOther> createState() => _DropdownRegOtherState();
}

class _DropdownRegOtherState extends State<DropdownRegOther> {
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
