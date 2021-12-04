import 'package:flutter/material.dart';
import 'bottom_navbar.dart';
import 'detail_page.dart';
import 'list_view.dart';

class BaseTemp extends StatefulWidget {
  const BaseTemp({Key? key}) : super(key: key);

  @override
  _BaseTempState createState() => _BaseTempState();
}

class _BaseTempState extends State<BaseTemp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('شهدا',style: TextStyle(fontSize: 20,fontFamily: 'vazir'),),
        centerTitle: true,
      ),
      bottomNavigationBar: const BottomNavbar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => DetailPage()),
        // );
      },
          backgroundColor: Colors.lightGreenAccent,
          child: Icon(Icons.contact_support)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: const ListViewPage(),
    );
  }
}
