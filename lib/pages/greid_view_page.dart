import 'package:flutter/material.dart';
class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  static const String id = "grid_view_page";

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          _itemOfList(title: "Rasm1", img: "assets/images/ic_image1.jpeg"),
          _itemOfList(title: "Rasm1", img: "assets/images/ic_image2.jpeg"),
          _itemOfList(title: "Rasm1", img: "assets/images/ic_image3.jpeg"),
          _itemOfList(title: "Rasm1", img: "assets/images/ic_image2.jpeg"),
          _itemOfList(title: "Rasm1", img: "assets/images/ic_image1.jpeg"),
          _itemOfList(title: "Rasm1", img: "assets/images/ic_image3.jpeg"),
          _itemOfList(title: "Rasm1", img: "assets/images/ic_image2.jpeg"),
          _itemOfList(title: "Rasm1", img: "assets/images/ic_image1.jpeg"),
        ],
      ),
    );
  }

  Widget _itemOfList({title, img}){
    return Container(
      width: 150,
      margin:EdgeInsets.all(5),
      color: Colors.redAccent,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Image(
            width: 70,
            height: 70,
            fit: BoxFit.cover,
            image: AssetImage(img),
          ),
          SizedBox(height: 5,),
          Text(title, style: TextStyle(fontSize: 16),)
        ],
      ),
    );
  }

}
