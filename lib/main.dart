import 'package:flutter/material.dart';
import 'package:instagramapp/pages/feedpage.dart';
import 'package:instagramapp/pages/homepage.dart';
import 'package:instagramapp/pages/serachpage.dart';
import 'package:instagramapp/pages/uploadpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context)=>HomePage(),
        FeedPage.id: (context)=>FeedPage(),
        SearchPage.id: (context)=>SearchPage(),
        UploadPage.id: (context)=>UploadPage(),
      },
    );
  }
}

