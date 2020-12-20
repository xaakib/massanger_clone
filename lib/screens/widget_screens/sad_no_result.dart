import 'package:flutter/material.dart';

class SadResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Icon(
              Icons.search_sharp,
              color: Colors.blue,
              size: 150,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Sad no result!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "We cannot find the kyword you are searching \n form maybe a little spelling mistake?",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 17,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Search Random",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
