import 'package:flutter/material.dart';
import 'package:ultralight_app/HomePage.dart';
import 'package:ultralight_app/Prediction.dart';
import 'package:ultralight_app/Transaction.dart';
import 'package:ultralight_app/Stats.dart';



void main() {
  runApp(
    ultralight()
  );
 
}

class ultralight extends StatelessWidget{
  @override
  Widget build (BuildContext context)
  {
  return new MaterialApp
  (
    home: BottomNavBar(),
  );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
 {

   int _currentIndex=0;
   final List<Widget>_children=[
     Transaction(),
     HomePage(),
     Prediction(),
     statisticsPage(),
   ];

   void onTappedBar(int index)
   {
     setState(() {
       _currentIndex=index;
     });
   }

  @override
  Widget build(BuildContext context)
   {
    return Scaffold(
      body: _children[_currentIndex] ,
      bottomNavigationBar: BottomNavigationBar
      (
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items:
        [
          BottomNavigationBarItem
          (
          icon: new Icon(Icons.attach_money),
          backgroundColor: Colors.lightBlueAccent,
          title:new Text('Transaction')
          ),
          //transaction
          BottomNavigationBarItem
          (
          icon: new Icon(Icons.home),
          backgroundColor: Colors.lightBlueAccent,
          title:new Text('Home')
          ),
          //home
          BottomNavigationBarItem
          (
          icon: new Icon(Icons.multiline_chart),
          backgroundColor: Colors.lightBlueAccent,
          title:new Text('Prediction')
          ),
          //graph
          BottomNavigationBarItem
          (
          icon: new Icon(Icons.table_chart),
          backgroundColor: Colors.lightBlueAccent,
          title:new Text('Stats')
          )
          //statistics
        ],
      ),
    );
  }
}