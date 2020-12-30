//import 'package:avtaar_education/TabPages/DesignPage.dart';
import 'package:avtaar_education/main.dart';
import 'package:flutter/material.dart';
//import 'package:avtaar_education/TabPages/DesignPage.dart';

class UIPage extends StatefulWidget {

    static MaterialColor first=Colors.grey, second=Colors.grey;

  //UIPage(this.col);

  @override
  _UIPageState createState() => _UIPageState();
}

class _UIPageState extends State<UIPage> {
  int stage;

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
        },),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Container(
                child: Text('UI Design first Page',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 50,),
              RaisedButton(
                  child: Text('NEXT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  color: Colors.grey,
                  onPressed: (){
                setState(() {
                  UIPage.first=Colors.green;
                });

                Navigator.push(context, MaterialPageRoute(builder: (context)=>UI2Page()));

              })
            ],
          ),
        ),
      ),
    );


  }
}

class UI2Page extends StatefulWidget {
  @override
  _UI2PageState createState() => _UI2PageState();
}

class _UI2PageState extends State<UI2Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>UIPage()));
          },),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Container(
                child: Text('UI Design second Page',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 50,),
              RaisedButton(
                  child: Text('NEXT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  color: Colors.grey,
                  onPressed: (){
                    setState(() {
                      UIPage.second=Colors.green;
                    });

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));

                  })
            ],
          ),
        ),
      ),
    );
  }
}


