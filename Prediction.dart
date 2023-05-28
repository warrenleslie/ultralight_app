import 'package:flutter/material.dart';
class Prediction extends StatefulWidget {
  @override
  _PredictionState createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {
  int btcLastHour=0;
  int nrTransaction=0;
  int contactsOnline=0;
  int timeLastTrans=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: new AppBar(
        title: new Text('Ultralight Beam $btcLastHour'),
      ),
      body: 
        Center
        (
          child: Text("PREDICTION"),
        ),
    );
  }
}