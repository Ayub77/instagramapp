import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagramapp/model/post_madel.dart';
import 'package:instagramapp/model/story_model.dart';
class FeedPage extends StatefulWidget {
  
  static final String id = "FeedPage";

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {

 List<Story> _stories = [
    Story("assets/images/user_1.jpeg", "Jazmin"),
    Story("assets/images/user_2.jpeg", "Sylvester"),
    Story("assets/images/user_3.jpeg", "Lavina"),
    Story("assets/images/user_1.jpeg", "Jazmin"),
    Story("assets/images/user_2.jpeg", "Sylvester"),
    Story("assets/images/user_3.jpeg", "Lavina"),
    Story("assets/images/user_1.jpeg", "Jazmin"),
    Story("assets/images/user_2.jpeg", "Sylvester"),
    Story("assets/images/user_3.jpeg", "Lavina"),
    Story("assets/images/user_1.jpeg", "Jazmin"),
    Story("assets/images/user_2.jpeg", "Sylvester"),
    Story("assets/images/user_3.jpeg", "Lavina"),
    Story("assets/images/user_1.jpeg", "Jazmin"),
    Story("assets/images/user_2.jpeg", "Sylvester"),
    Story("assets/images/user_3.jpeg", "Lavina"),
    Story("assets/images/user_1.jpeg", "Jazmin"),
    Story("assets/images/user_2.jpeg", "Sylvester"),
    Story("assets/images/user_3.jpeg", "Lavina"),
  ];

  List<Post> _posts = [
    Post(
        "Brianne",
        "assets/images/user_1.jpeg",
        "assets/images/feed_1.jpeg",
        "Consequatur nihil aliquid omnis consequatur."),
    Post(
        "Henri",
        "assets/images/user_2.jpeg",
         "assets/images/feed_2.jpeg",
         "Consequatur nihil aliquid omnis consequatur."),
    Post(
         "Mariano",
         "assets/images/user_3.jpeg",
         "assets/images/feed_3.jpeg",
         "Consequatur nihil aliquid omnis consequatur."),

  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Divider( color: Colors.white54,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                    child:
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                            Text("Stories",style: TextStyle(color: Colors.white54),),
                            Text("Watch All",style: TextStyle(color: Colors.white54),),
                      ],
                    ),
              ),
             
              Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 130,
                color: Colors.black,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: _stories.map((story) {
                    return _itemOfStory(story);
                  } ).toList()
                ),
              ),
            
            
             Container(
                 width: MediaQuery.of(context).size.width,
                 child: ListView.builder(
                   shrinkWrap: true,
                   physics: NeverScrollableScrollPhysics(),
                   itemCount: _posts.length,
                   itemBuilder:( ctx, i){
                     return  _itemOfPost(_posts[i]);
                   } 
                   ),
              ),
             
            ],
          ),
        ),
      )

    );
  }
Widget _itemOfStory(Story story){

    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                border: Border.all(
                  color: Color(0xFF8e44ad),
                  width: 3
                )
              ),
             child: Container(
               padding: EdgeInsets.all(2),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(70),
                 child: Image(
                   image: AssetImage(story.image),
                   width: 70,
                   height: 70,
                   fit: BoxFit.cover,
                 ),
               ),
               ),
             ),
      
        SizedBox(height: 5,),
       Text(story.name,style: TextStyle(fontSize: 13,color: Colors.white54),)
      ],
    );
}


Widget _itemOfPost(Post post) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image(
                        image: AssetImage(post.postImage),
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(post.userImage),
                  ],
                ),
                IconButton(
                  icon: Icon(SimpleLineIcons.options),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          FadeInImage(
            image: AssetImage(post.postImage),
            placeholder: AssetImage("assets/images/placeholder.png"),
            width: MediaQuery.of(context).size.width,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesome.heart_o),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesome.comment_o),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(FontAwesome.send_o),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(FontAwesome.bookmark_o),
              ),
            ],
          ),

          // #tags
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 14,
            ),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Liked By ",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: "Sigmund,",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: " Yessenia,",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: " Dayana",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: " and",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: " 1263 others",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),

          // #caption
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 5,
            ),
            child: RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: post.userName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: " ${post.caption}",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),

          // #post date
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 14,
            ),
            alignment: Alignment.topLeft,
            child: Text(
              "Febuary 2020",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}