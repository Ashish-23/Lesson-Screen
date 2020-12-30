import 'package:flutter/material.dart';
import 'package:avtaar_education/TabPages/DesignPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return DefaultTabController(

      length: 5,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: null),
          backgroundColor: Colors.white,
          title: Center(child: Text('Lessons',style: TextStyle(color: Colors.black),)),
          bottom: TabBar(
             // unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300),
              isScrollable: true,
              indicatorColor: Colors.deepPurple,
              indicatorSize: (TabBarIndicatorSize.label),

              tabs: [
            Tab(child: Text('Design',style: TextStyle(color: Colors.black)),),

            //Text('.',style: TextStyle(fontSize: 20),),
            Tab(child: Text('Environment',style: TextStyle(color: Colors.black)),),
            //Tab(text:'left',),
            Tab(child: Text('Technology',style: TextStyle(color: Colors.black)),),
            Tab(child: Text('Research',style: TextStyle(color: Colors.black)),),
            Tab(child: Text('Design',style: TextStyle(color: Colors.black)),),
          ]),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(Icons.pause_circle_filled, color: Colors.yellow[800],),
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: Center(
                child: DesignPage(),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 2'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 3'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 4'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 5'),
              ),
            ),

          ],
        ),
       // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}


