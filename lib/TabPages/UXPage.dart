//import 'package:avtaar_education/TabPages/DesignPage.dart';
import 'package:avtaar_education/main.dart';
import 'package:flutter/material.dart';
//import 'package:avtaar_education/TabPages/DesignPage.dart';

class UXPage extends StatefulWidget {


   static MaterialColor first=Colors.grey,second=Colors.grey;

  @override
  _UXPageState createState() => _UXPageState();
}

class _UXPageState extends State<UXPage> {
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
                child: Text('UX Design first Page',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 50,),
              RaisedButton(
                  child: Text('NEXT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                  color: Colors.grey,
                  onPressed: (){
                setState(() {
                  UXPage.first=Colors.green;
                });

                Navigator.push(context, MaterialPageRoute(builder: (context)=>UX2Page()));

              })
            ],
          ),
        ),
      ),
    );


  }
}

class UX2Page extends StatefulWidget {
  @override
  _UX2PageState createState() => _UX2PageState();
}


class _UX2PageState extends State<UX2Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: Scaffold(

         appBar: AppBar(backgroundColor: Colors.white,
            leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UXPage()));
            },),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                Container(
                  child: Text('UX Design second Page',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 50,),
                RaisedButton(
                    child: Text('NEXT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    color: Colors.grey,
                    onPressed: (){
                      setState(() {
                        UXPage.second=Colors.green;
                      });

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));

                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}