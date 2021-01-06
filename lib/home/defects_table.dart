import 'package:flutter/material.dart';
import 'package:defects_app/models/Defect.dart';

class DefectsTable extends StatefulWidget {
  // TODO: some parameters pertaining to the table to make the appropriate network request
  // i.e block, level, status etc
  @override
  _DefectsTableState createState() => _DefectsTableState();
}

class _DefectsTableState extends State<DefectsTable> {

  @override
  Widget build(BuildContext context) {
    // simulate network request for Defects list for this table
    // TODO: replace with actual network request
    final defects = <Defect>[
      Defect(unit: '01-03', desc:'WIRE FAULT', status:'Reported'),
      Defect(unit: '01-05', desc:'Fuse break', status:'Reported'),
      Defect(unit: '01-07', desc:'Light down', status:'Agency'),
      Defect(unit: '01-19', desc:'Light down', status:'Done'),
    ];

    final defectRows = defects.map((defect) => DataRow(cells: [
      DataCell(Text(defect.unit)),
      DataCell(Text(defect.desc)),
      DataCell(Text(defect.status)),
    ])).toList();

    return ConstrainedBox(
      constraints: BoxConstraints.expand(width:MediaQuery.of(context).size.width),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DataTable(
              showBottomBorder: true,
              columns: [
                DataColumn(label: Text("Unit") ),
                DataColumn(label: Text("Defect") ),
                DataColumn(label: Text("Status") ),
              ],
              rows: defectRows
            ),
          ],
        ),
      ),
    );
  }
}
