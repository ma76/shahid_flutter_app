import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shahid/model.dart';
import 'detail_page.dart';
//Define GenerateItems-Function
Card generateItems(Shohada shahid,context){
  return Card(
    color: Colors.cyan,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    elevation: 8,
    child: InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(shahid)),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 90,
            width: 90,
            child: Image.network(shahid.imageUrl,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'statics/images/default-person.jpg'
                  )
                );
              },
            ),
            ),
          Padding(padding: EdgeInsets.only(top: 10),
              child: Text(shahid.name,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'vazir'
              ),)),
        ],
      ),
    )
  );
}

//Define List-View
class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<Shohada> _shohada = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchItems();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(_shohada.length,(int index){
          return generateItems(_shohada[index],context);
    }),
    )
    );
  }
  //Define Fetch-Function
  void fetchItems() async{
    // var url = Uri.parse('https://shohadas.herokuapp.com/api/shahids');
    var url = Uri.parse('https://ma76.ir/shohada/api/shahids');
    Response response = await get(url);
    // print(utf8.decode(response.bodyBytes));
    // print(_shohada);
    setState(() {
      var shohadaJson = json.decode(utf8.decode(response.bodyBytes));
      for(var shahid in shohadaJson){
        Shohada item = Shohada(shahid['name'], shahid['description'], shahid['imageUrl'],
            shahid['born_date'], shahid['shahadat_date']);
        _shohada.add(item);
        // print(web+shahid['imageUrl']);
        // print(item.imgUrl());
        // print(item.imgUrl().runtimeType);

      }
    });
  }
}




















