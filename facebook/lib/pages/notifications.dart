import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        titleTextStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed:() {}, icon: Icon(Icons.more_horiz)),
          IconButton(onPressed:() {}, icon: Icon(Icons.search)),
        ],
      ),
      body:Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/profile/prof1.jpg"),
            ),
            title: Text("Learned how Meta will use your info in new ways to personalize your experiences."),
            subtitle: Text("16 hrs"),
            trailing: Icon(Icons.thumb_up, color: Colors.blue,),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/profile/prof2.jpg"),
            ),
            title: Text("5 Unknown Facts recently shared 1 post."),
            subtitle: Text("20 hrs"),
            trailing: Icon(Icons.comment, color: Colors.green,),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/profile/prof3.jpg"),
            ),
            title: Text("Fandango posted a new reel: Diego Luna, Jennifer Lopez, and Tonatiuh star in KissOf TheSpiderWoman, in theater..."),
            subtitle: Text("2 hrs"),
            trailing: Icon(Icons.person_add, color: Colors.orange,),
          ),
          const Padding(padding:  EdgeInsets.all(8.0)),
          child: Text("Today", style: TextStyle(fontWeight: FontWeight.bold),),
        ]),
  )
    ;}
  }