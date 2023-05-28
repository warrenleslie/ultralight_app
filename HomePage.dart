import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<String> Names = [
    'Gabriel','Warren','Fahim','Sarah', 'Jessica','George','Johnathan'
  ];
 


   void bitcoinShit()
   {
     
   }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: AppBar(
        title: new Text("Ultralight Beam"),
      ),
      body: 
      
      new Container(
        child: new ListView.builder(
            reverse: false,
            itemBuilder: (_,int index)=>EachList(this.Names[index]),
            itemCount: this.Names.length,
        ),
      ),
    );
  }
}
class EachList extends StatelessWidget{
  final String name;
  EachList(this.name);
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        padding: EdgeInsets.all(8.0),
        child: new Row(
          children: <Widget>[
            new CircleAvatar(child: new Text(name[0]),),
            new Padding(padding: EdgeInsets.only(right: 10.0)),
            new Text(name,style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

}