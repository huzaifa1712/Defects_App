import 'package:flutter/material.dart';
import 'block.dart';

class Placeholder extends StatefulWidget {
  final Color color;
  final String text;

  Placeholder({this.color, this.text});
  @override
  _PlaceholderState createState() => _PlaceholderState();
}

class _PlaceholderState extends State<Placeholder> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      child: Text(widget.text),
    );
  }
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;


  void _onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _children = [
      BlockPage(),
      Placeholder(color:Colors.deepOrange, text: "Blk2"),
      Placeholder(color:Colors.green, text:"Blk3"),
      Placeholder(color:Colors.blue, text:"Blk4"),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Defects App")),
      ),
      body: _children[_currentIndex] ?? Text("Default if Error"),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[800],
        selectedFontSize: 20.0,
        unselectedFontSize: 18.0,
        type: BottomNavigationBarType.fixed,
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Container(height: 0.0),
              label: "Blk1"
          ),
          BottomNavigationBarItem(
              icon: Container(height: 0.0),
              label: "Blk2"
          ),
          BottomNavigationBarItem(
              icon: Container(height: 0.0),
              label: "Blk3"
          ),
          BottomNavigationBarItem(
              icon: Container(height: 0.0),
              label: "Blk4"
          ),


        ],
      ),
    );
  }
}


