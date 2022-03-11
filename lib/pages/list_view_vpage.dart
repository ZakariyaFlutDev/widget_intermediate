import 'package:flutter/material.dart';
class ListViewVPage extends StatefulWidget {
  const ListViewVPage({Key? key}) : super(key: key);

  static final String id = "list_view_vertical";

  @override
  _ListViewVPageState createState() => _ListViewVPageState();
}

class _ListViewVPageState extends State<ListViewVPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Vertical"),
      ),
      body: ListView(
        children: [
          _itemOfList(title: "Rasm", image: "assets/images/ic_image1.jpeg"),
          _itemOfList(title: "Rasm", image: "assets/images/ic_image2.jpeg"),
          _itemOfList(title: "Rasm", image: "assets/images/ic_image3.jpeg"),
          _itemOfList(title: "Rasm", image: "assets/images/ic_image1.jpeg"),
          _itemOfList(title: "Rasm", image: "assets/images/ic_image2.jpeg"),
          _itemOfList(title: "Rasm", image: "assets/images/ic_image3.jpeg"),
          _itemOfList(title: "Rasm", image: "assets/images/ic_image1.jpeg"),
          _itemOfList(title: "Rasm", image: "assets/images/ic_image2.jpeg"),
          _itemOfList(title: "Rasm", image: "assets/images/ic_image3.jpeg"),
        ],
      ),
    );
  }


  Widget _itemOfList({title, image}){
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            child: Image(
              width: 70,
              height: 70,
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
          SizedBox(width: 10,),
          Text(title, style: TextStyle(fontSize: 18),)
        ],
      ),
    );
  }
}
