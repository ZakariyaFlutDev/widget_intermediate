
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_intermediate/pages/greid_view_page.dart';
import 'package:widget_intermediate/pages/list_view_hpage.dart';
import 'package:widget_intermediate/pages/list_view_vpage.dart';
import 'package:widget_intermediate/pages/page_view.dart';
import 'package:widget_intermediate/pages/tab_bar_view.dart';
import 'package:widget_intermediate/pages/task1.dart';
import 'package:widget_intermediate/pages/task_three.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    _androidDialog(){
      showDialog(context: context,
          builder: (BuildContext context){
            return AlertDialog(
              title: Text("Log out"),
              content: Text("Are you sure you wand to Log out"),
              actions: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel"),
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: Text("Confirm"),
                )
              ],
            );
          });
    }

    _iosDialog(){
      showDialog(context: context,
          builder: (BuildContext context) => CupertinoAlertDialog(
            title: Text("Log out"),
            content: Text("Are you sure you want to Log out"),
            actions: [
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Text("Cancel"),
                onPressed: (){Navigator.of(context).pop();},
              ),
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Text("Confirm"),
                onPressed: (){Navigator.of(context).pop();},
              )
            ],
          ),
      );

    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),

      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 220,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image(
                      width: 80,
                      height: 80,
                      image: AssetImage("assets/images/ic_image1.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text("Zakariya Ibn Yahya", style: TextStyle(fontSize: 18, color: Colors.white),),
                  SizedBox(height: 5,),
                  Text("zakariyaibnyahya@gmail.com", style: TextStyle(fontSize: 14, color: Colors.white),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
              height: 70,
              child: Row(
                children: [
                  Icon(Icons.home, color: Colors.blue,),
                  SizedBox(width: 20,),
                  Text("Home", style: TextStyle(fontSize: 18, color: Colors.blue),),
                ],
              )
            ),
            Container(
                padding: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
                height: 70,
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 20,),
                    Text("Profile", style: TextStyle(fontSize: 18),),
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
                height: 70,
                child: Row(
                  children: [
                    Icon(Icons.group),
                    SizedBox(width: 20,),
                    Text("About Us", style: TextStyle(fontSize: 18),),
                  ],
                )
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                if(Platform.isAndroid){
                  _androidDialog();
                }
                else if(Platform.isIOS){
                  _iosDialog();
                }
              },
              child: Text("Alert Dialog", style: TextStyle(color: Colors.white),),
            ),
            ElevatedButton(
              onPressed: (){Navigator.pushNamed(context, PageViewPage.id);},
              child: Text("Page View"),
            ),
            ElevatedButton(
              onPressed: (){Navigator.pushNamed(context, ListViewVPage.id);},
              child: Text("List View"),
            ),
            ElevatedButton(
              onPressed: (){Navigator.pushNamed(context, ListViewHPage.id);},
              child: Text("List View"),
            ),
            ElevatedButton(
              onPressed: (){Navigator.pushNamed(context, GridViewPage.id);},
              child: Text("Grid View"),
            ),
            ElevatedButton(
              onPressed: (){Navigator.pushNamed(context, TaskOne.id);},
              child: Text("Task 1"),
            ),
            ElevatedButton(
              onPressed: (){Navigator.pushNamed(context, TstThree.id);},
              child: Text("Task 3"),
            ),
            ElevatedButton(
              onPressed: (){Navigator.pushNamed(context, TabBarViewPage.id);},
              child: Text("Tab Bar"),
            )
          ],
        ),
      ),
    );
  }
}
