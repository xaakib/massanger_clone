import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // TabController _tabController TabController;
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
                Icons.location_off_outlined,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            bottom: TabBar(
              indicatorColor: Colors.blue,
              // controller: _tabController,
              tabs: [
                Tab(
                  child: Text("CHATS",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
                Tab(
                  child: Text("PAGE",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
                Tab(
                  child: Text("CALLS",
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ),
              ],
            ),
            title: Text('Chats'),
            actions: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.search_off_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.menu_open_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      print("object");
                    },
                  ),
                ],
              )
            ],
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
