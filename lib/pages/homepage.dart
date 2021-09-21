import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagramapp/pages/feedpage.dart';
import 'package:instagramapp/pages/serachpage.dart';
import 'package:instagramapp/pages/uploadpage.dart';

class HomePage extends StatefulWidget {

static final String id = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

int currentpage=0;
PageController pageController;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }
var _pages=[
  FeedPage(),
  SearchPage(), 
  UploadPage(),
  FeedPage(),
  FeedPage(),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
         title: Container(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               IconButton(onPressed: (){
                   
               },
                icon: Icon(Feather.camera,color: Colors.white54,)
                ),
                Text("Instagram",style: TextStyle(color: Colors.white54,fontSize: 25),),
                Row(
                  children: [
                        IconButton(onPressed: (){

                        }, icon: Icon(Feather.tv)),
                      IconButton(onPressed: (){

                      }, 
                      icon: Icon(Feather.send))
                         ],
                )
             ],
           ),
         ), 
        ),
           
       body: _pages[currentpage],
      
      
      
      bottomNavigationBar: BottomNavigationBar( 
              currentIndex: currentpage,
              
              

              onTap: (i){
                setState(() {
                currentpage = i;
               });
              },
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              backgroundColor: Colors.white,
              items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home,),
                    title: Text( "Home"),
                    
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search,),
                    title: Text("Search"),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Feather.plus_square,),
                    title: Text("Upload")
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Feather.heart,),
                    title: Text("Likes")
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Feather.user,),
                    title: Text("Account")
                  ),


              ],

            ),
    );
  }
 

  
}