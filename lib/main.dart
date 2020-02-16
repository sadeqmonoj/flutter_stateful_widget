import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new AwasomeButton()
    )
  );
}

class AwasomeButton extends StatefulWidget{
  @override
  AwasomeButtonState createState () => new AwasomeButtonState();
  
}
  
class AwasomeButtonState extends State<AwasomeButton> {

  int counter =0;
  List<String> strings = ["Flutter", "Is", "Awasome"];
  String displayedString ="";

  void onPressed(){
    setState(() {
      displayedString = strings[counter];
      counter = counter<2 ?counter+1:0;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateful Widget"), backgroundColor: Colors.deepOrange,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(displayedString, style:  new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),),
              new Padding(padding: EdgeInsets.all(15.0)),
              new RaisedButton(
                child: new Text("Press Me!!", style: new TextStyle( color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic),),
                color: Colors.red,
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
 }