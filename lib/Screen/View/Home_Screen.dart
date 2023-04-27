import 'package:flutter/material.dart';
import 'package:whatsapp_ui_with_tabview/Screen/View/Call_Screen.dart';
import 'package:whatsapp_ui_with_tabview/Screen/View/ChatScreen.dart';
import 'package:whatsapp_ui_with_tabview/Screen/View/Status_Screen.dart';
import 'package:whatsapp_ui_with_tabview/Screen/View/group_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp"),
            actions: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 15),
              Icon(Icons.search_rounded),
              SizedBox(width: 10),
              Icon(Icons.more_vert),
            ],
            backgroundColor: Colors.teal[800],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: "Chats"),
                Tab(text: "Status"),
                Tab(text: "Calls")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ChatScreen(),
              StatusScreen(),
              CallScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
