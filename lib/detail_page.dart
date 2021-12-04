import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'bottom_navbar.dart';
import 'model.dart';


class DetailPage extends StatelessWidget {
  Shohada _shahid;

  DetailPage(this._shahid);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      bottomNavigationBar: const BottomNavbar(),
      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: Colors.lightGreenAccent,
        child: Icon(Icons.favorite, color: Colors.black,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Text(_shahid.name, style: TextStyle(
                fontSize: 27, fontFamily: 'vazir',
              ),),
              Container(
                height: 150,
                width: 150,
                child: Image.network(_shahid.imageUrl,fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                            'statics/images/default-person.jpg',
                          fit: BoxFit.fill,
                        )
                    );
                  },
                ),
              ),
              Expanded(
                child: Padding(padding: EdgeInsets.all(10),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                    child: Padding(padding: EdgeInsets.all(5),
                      child: Text(_shahid.description, textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'vazir'
                        ),),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
















