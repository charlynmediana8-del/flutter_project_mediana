import 'package:facebook/model/story_model.dart';
import 'package:facebook/widgets/createpost.dart';
import 'package:facebook/widgets/newsfeed_post.dart';
import 'package:facebook/widgets/storieslist.dart';
import 'package:flutter/material.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}List<StoryModel> stories = [
  StoryModel(
    id: '1', 
    username: 'Juan', 
    profileImagePath: 'assets/profile/profile1.jpg', 
    storyImagePath: 'assets/myday/myday1.jpg', 
    timestamp: DateTime.now().subtract(Duration(hours: 5)), 
    isViewed: false),

StoryModel(
   id: '2', 
   username: 'Lycah', 
   profileImagePath: 'assets/profile/prof2.jpg', 
   storyImagePath: 'assets/myday/myday2.jpg', 
   timestamp: DateTime.now().subtract(Duration(hours: 5)), 
   isViewed: false),

   StoryModel(
    id: '3', 
    username: 'Joa', 
    profileImagePath: 'assets/profile/prof3.jpg', 
    storyImagePath: 'assets/myday/myday3.jpg', 
    timestamp: DateTime.now().subtract(Duration(hours: 5)), 
    isViewed: false),

   StoryModel(
    id: '4', 
    username: 'Maria', 
    profileImagePath: 'assets/profile/profile4.jpg', 
    storyImagePath: 'assets/myday/myday4.jpg', 
    timestamp: DateTime.now().subtract(Duration(hours: 5)), 
   isViewed: false),

   StoryModel(
    id: '5', 
    username: 'Jose', 
    profileImagePath: 'assets/profile/profile5.jpg', 
    storyImagePath: 'assets/myday/myday5.jpg', 
    timestamp: DateTime.now().subtract(Duration(hours: 5)), 
    isViewed: false),
];

class _NewsFeedState extends State<NewsFeed> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
        "assets/icon/logo.png",
      height: 80,
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search,)),
        DrawerButton(),
      ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [Createpost(),
          StoriesList (
            stories: stories,
            onStoryTap: (story) {}
            ),
            NewsFeedPost(),
            NewsFeedPost(
              name: "Alice",
              caption: "Enjoying the sunny weather at the beach!",
              imageurl: "assets/myday/myday4.jpg"),
        
        
            NewsFeedPost(
              name: "Bob Smith",
              caption: "Stories!",
              imageurl: "assets/myday/myday5.jpg",)
          ],
        ),
      ),
      );
  }
}