import 'package:flutter/material.dart';


class statisticsPage extends StatefulWidget {
  @override
  _statisticsPageState createState() => _statisticsPageState();
}

class _statisticsPageState extends State<statisticsPage> {
  int btcLastHour=0;
  int nrTransaction=0;
  int contactsOnline=0;
  int timeLastTrans=0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Ultralight Beam'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>
            [
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('Statistics'),
                      new Text('Today:')
                    ],
                  ),
                ),
              ),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('20 BTC in last hour'),
                      new Text('5 transactions')
                    ],
                  ),
                ),
              ),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('10 contacts online'),
                      new Text('0.2 secs for last transaction to complete')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}