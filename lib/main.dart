
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const DropdownMenuExample());
// }

// class DropdownMenuExample extends StatefulWidget {
//   const DropdownMenuExample({Key? key}) : super(key: key);

//   @override
//   _DropdownMenuExampleState createState() => _DropdownMenuExampleState();
// }

// class _DropdownMenuExampleState extends State<DropdownMenuExample> {
//   String _selectedItem = 'fe';
//   List<String> _dropdownItems = ['fe', 'se', 'te', 'be'];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Add batch'),
//         ),
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 'Select Year',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//             DropdownButton<String>(
//               value: _selectedItem,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   _selectedItem = newValue!;
//                 });
//               },
//               items: _dropdownItems.map((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value.toUpperCase()),
//                 );
//               }).toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const DropdownMenuExample());
}

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({Key? key}) : super(key: key);

  @override
  _DropdownMenuExampleState createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String _selectedYear = 'fe';
  List<String> _yearItems = ['fe', 'se', 'te', 'be'];

  String _selectedBranch = 'FE';
  List<String> _branchItems = ['FE', 'CE', 'ENTC', 'IT', 'ECE', 'AIDS'];

  String _selectedDivision = '1';
  List<String> _divisionItems = List.generate(13, (index) => (index + 1).toString());

  String _selectedSubject = 'EM2';
  List<String> _subjectItems = ['EM2', 'Phy', 'EM', 'BEE', 'CS', 'EG', 'ES2'];

  String _selectedBatch = 'A';
  List<String> _batchItems = ['A', 'B', 'C'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Add Batch'),
        ),
        body: Column(
          children: [
            buildDropdown('Select Year', _selectedYear, _yearItems, (String? newValue) {
              setState(() {
                _selectedYear = newValue!;
              });
            }),
            buildDropdown('Select Branch', _selectedBranch, _branchItems, (String? newValue) {
              setState(() {
                _selectedBranch = newValue!;
              });
            }),
            buildDropdown('Select Division', _selectedDivision, _divisionItems, (String? newValue) {
              setState(() {
                _selectedDivision = newValue!;
              });
            }),
            buildDropdown('Select Subject', _selectedSubject, _subjectItems, (String? newValue) {
              setState(() {
                _selectedSubject = newValue!;
              });
            }),
            buildDropdown('Select Batch', _selectedBatch, _batchItems, (String? newValue) {
              setState(() {
                _selectedBatch = newValue!;
              });
            }),
          ],
        ),
      ),
    );
  }

  Widget buildDropdown(String title, String value, List<String> items, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          DropdownButton<String>(
            value: value,
            onChanged: onChanged,
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
