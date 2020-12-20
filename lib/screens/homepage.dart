import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
            title: Text(
              'Chats',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            centerTitle: true,
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
          bottomNavigationBar: CurvedNavigationBar(
            height: 50,
            color: Colors.blue,
            buttonBackgroundColor: Colors.black,
            backgroundColor: Colors.white,
            items: <Widget>[
              Icon(Icons.home_outlined, color: Colors.yellow, size: 30),
              Icon(Icons.add_alert_outlined, color: Colors.yellow, size: 30),
              Icon(Icons.hotel_outlined, color: Colors.yellow, size: 30),
              Icon(Icons.inbox_outlined, color: Colors.yellow, size: 30),
              Icon(Icons.menu_open_outlined, color: Colors.yellow, size: 30),
            ],
            onTap: (index) {
              //Handle button tap
            },
          ),
        ),
      ),
    );
  }
}
