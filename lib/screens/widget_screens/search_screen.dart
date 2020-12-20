import 'package:flutter/material.dart';

import '../call_screen.dart';
import '../page_screen.dart';
import 'sad_no_result.dart';

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
              onPressed: () {
                Navigator.pop(context);
              },
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
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(hintText: "Search"),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              SadResult(),
              PageScreen(),
              CallScreen(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.brush_outlined), onPressed: () {}),
        ),
      ),
    );
  }
}
