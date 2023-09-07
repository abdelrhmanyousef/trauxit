import 'package:flutter/material.dart';
import 'package:test/HomeBody.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              widthFactor: 20,
              child: Text(
                "Booking",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              )),
          backgroundColor: Colors.orange,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, right: 20),
          child: HomeBody(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: Colors.black,
          iconSize: 40,
          elevation: 30,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                backgroundColor: Colors.white,
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                backgroundColor: Colors.white,
                label: ""),
          ],
        ),
      ),
    );
  }
}
