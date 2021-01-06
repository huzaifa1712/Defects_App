import 'package:flutter/material.dart';
import 'defects_table.dart';
class BlockPage extends StatefulWidget {
  @override
  _BlockPageState createState() => _BlockPageState();
}

class _BlockPageState extends State<BlockPage> {
  @override
  Widget build(BuildContext context) {
    return DefectsTable();
  }
}
