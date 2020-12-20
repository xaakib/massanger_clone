import 'package:flutter/material.dart';

import '../call_screen.dart';
import '../chat_screen.dart';
import '../page_screen.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            bottom: TabBar(
              indicatorColor: Colors.blue,
              // controller: _tabController,
              tabs: [
                Tab(
                  child: Text("USERS",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
                Tab(
                  child: Text("PAGES",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
                Tab(
                  child: Text("GROUPS",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ],
            ),
            title: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
            ),
          ),
          body: TabBarView(
            children: [
              ChatScreen(),
              PageScreen(),
              CallScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
