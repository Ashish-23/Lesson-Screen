import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:avtaar_education/TabPages/UIPage.dart';
import 'package:avtaar_education/TabPages/UXPage.dart';
//import 'package:avtaar_education/main.dart';

class DesignPage extends StatefulWidget {
  @override
  _DesignPageState createState() => _DesignPageState();
}

class _DesignPageState extends State<DesignPage> {
 // String subtitle;
  static bool stage=false;
   MaterialColor col=Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(

      children:<Widget> [
        GestureDetector(

            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>UIPage()));},
            child: DesignLesson(networkImage:"https://image.winudf.com/v2/image1/Y29tLmppZGVndXJ1LnJlc3RhdXJhbnRfdWlfa2l0X3NjcmVlbl84XzE1NjE4NTAwNjNfMDgw/screen-8.jpg?fakeurl=1&type=.jpg",title:"UI Design",subtitle:"Visual appearance of app sjd",lock: Icons.lock_open,firstcal: UIPage.first,secondcal: UIPage.second,)),
        GestureDetector(
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>UXPage()));},
            child: DesignLesson(networkImage:"https://i.pinimg.com/originals/af/6e/07/af6e07a6e347ff255f6322cdaf478976.png",title:"UX Design",subtitle:"Brain behind the design",lock: Icons.lock_open,firstcal: UXPage.first,secondcal: UXPage.second,)),
        GestureDetector(

            child: DesignLesson(networkImage:"https://gillde.com/wp-content/uploads/2018/08/UIUX-Interaction-Design-%E2%80%93-Week-14-12.gif",title:"Interaction Design",subtitle:"Include animations and eff...",lock: Icons.lock_outline,firstcal: Colors.grey,secondcal: Colors.grey,)),
        DesignLesson(networkImage:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEeSySuZLccbBxE5ZMLQnvwXjUoK6s1m0Lpg&usqp=CAU",title:"Industrial Design",subtitle:"visual apperance of app &..",lock: Icons.lock_outline,firstcal: Colors.grey,secondcal: Colors.grey,),
        //DesignLesson(networkImage:"https://image.winudf.com/v2/image1/Y29tLmppZGVndXJ1LnJlc3RhdXJhbnRfdWlfa2l0X3NjcmVlbl84XzE1NjE4NTAwNjNfMDgw/screen-8.jpg?fakeurl=1&type=.jpg",title:"UI Dkdnondsfgn",subtitle:"hjhgjlg"),

      ],
    ),);
  }
}

class DesignLesson extends StatefulWidget {
  final String networkImage, title, subtitle;
   MaterialColor firstcal;
  MaterialColor secondcal;
  final IconData lock;


 DesignLesson({this.networkImage, this.title, this.subtitle, this.lock, this.firstcal,this.secondcal});

  @override
  _DesignLessonState createState() => _DesignLessonState();
}

class _DesignLessonState extends State<DesignLesson> {
   NetworkImage images;
  IconData bookmarkicon = Icons.bookmark_border;

 // _designLessonState(this.networkImage,this.title, this.subtitle );
  @override
  Widget build(BuildContext context) {


 //   designLes(NetworkImage images, String title, Text subtitle) {

      return Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                //padding: EdgeInsets.all(8),
                //fit: BoxFit.cover,
              // width: MediaQuery.of(context).size.width,
               width: 300,
                height: 80,
                decoration: BoxDecoration(color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3.0,
                    spreadRadius: 0.0,
                  )],
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)),
                ),

                child: Column(
                  children: [
                    ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),

                        child:Container(
                          width: 50, height: 100,
                          decoration: BoxDecoration(color: Colors.white,
                              image: DecorationImage(
                                image: NetworkImage(widget.networkImage),
                                fit: BoxFit.cover,
                              )
                          ),



                        ),

                      ),
                      title: Text(widget.title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      subtitle: Text(widget.subtitle,style: TextStyle(fontSize: 12),),
                      trailing: IconButton(icon: Icon(bookmarkicon,
                        color: Colors.black,
                      ),
                        onPressed: () {
                          setState(
                                () {
                              if(bookmarkicon==Icons.bookmark_border)
                                bookmarkicon=Icons.bookmark;
                              else
                                bookmarkicon=Icons.bookmark_border;
                            },
                          );
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 90,
                          color: widget.firstcal,
                        ),
                        SizedBox(width: 7,),
                        Container(
                          height: 5,
                          width: 80,

                          color: widget.secondcal,
                        ),
                        SizedBox(width: 7,),
                        Container(
                          height: 5,
                          width: 80,
                          color:Colors.grey,
                        ),
                      ],
                    )
                  ],
                ),
                //width: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(widget.lock),
            ),
          ],
        ),
      );
  }
}

