import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/itemmodel.dart';

import 'package:flutter_application_1/search.dart';
import 'package:flutter_application_1/notification.dart';
import 'package:flutter_application_1/shoppingbag.dart';
import 'package:flutter_application_1/person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Deals of the week",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> screens = [
    newpage(),
    Search(),
    Notifications(),
    Shoppingbag(),
    Person(),
  ];
  int _selectPage = 0;


 getdata (){
  ItemModels.fromJson()
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deals of the Day'),
      ),
      body: (screens.elementAt(_selectPage)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        currentIndex: _selectPage,
        onTap: (val) {
          setState(() {
            _selectPage = val;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              //backgroundColor: Colors.white,
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              // backgroundColor: Colors.white,
              label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active),
              // backgroundColor: Colors.white,
              label: 'notifications'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              // backgroundColor: Colors.white,
              label: 'Shopping bag'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              //  backgroundColor: Colors.white,
              label: 'Profile'),
        ],
      ),
    );
  }
}

class newpage extends StatelessWidget {
  newpage({
    Key? key,
  }) : super(key: key);

  List<Map<String, dynamic>> data = [
    {
      "imgUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Orange-Fruit-Pieces.jpg/1190px-Orange-Fruit-Pieces.jpg",
      "name": "Orange-Best of Himalaya's",
      "price": "199",
      "discount": "169.5",
      "DeliveryTime": "Tomorrow evening"
    },
    {
      "imgUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Orange-Fruit-Pieces.jpg/1190px-Orange-Fruit-Pieces.jpg",
      "name": "Orange-Best of Himalaya's",
      "price": "199",
      "discount": "169.5",
      "DeliveryTime": "Tomorrow evening"
    },
    {
      "imgUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Orange-Fruit-Pieces.jpg/1190px-Orange-Fruit-Pieces.jpg",
      "name": "Orange-Best of Himalaya's",
      "price": "199",
      "discount": "169.5",
      "DeliveryTime": "Tomorrow evening"
    },
    {
      "imgUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Orange-Fruit-Pieces.jpg/1190px-Orange-Fruit-Pieces.jpg",
      "name": "Orange-Best of Himalaya's",
      "price": "199",
      "discount": "169.5",
      "DeliveryTime": "Tomorrow evening"
    },
  ];

  getdata(){
  final dataMOdel = ItemModels.fromJson({
      "imgUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Orange-Fruit-Pieces.jpg/1190px-Orange-Fruit-Pieces.jpg",
      "name": "Orange-Best of Himalaya's",
      "price": "199",
      "discount": "169.5",
      "DeliveryTime": "Tomorrow evening"
    },);
  dataMOdel.name;
  

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: data.length,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  alignment: Alignment.center,
                  child: Text(data[index]["name"])
                  Text(data[]),
                  
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15)),
                );
              }),
        ],
      ),
    );
  }
}
