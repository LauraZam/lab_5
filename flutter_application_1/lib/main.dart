import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 5',
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[300]),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          "Lab 5",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.tab)),
          Tab(icon: Icon(Icons.image)),
        ]),
      ),
      body: TabBarView(children: [
        Center(child: ListView(children: <Widget>[
          ListTile(leading: Icon(Icons.map), title: Text('Map'), subtitle: Text('mappps'),),
          ListTile(leading: Icon(Icons.photo_album), title: Text('Album'), subtitle: Text('album of photos'),),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone'), subtitle: Text('don"t call to us'),),
          ListTile(leading: Icon(Icons.contacts), title: Text('Contacts'), subtitle: Text('our contacts'),),
          ListTile(leading: Icon(Icons.settings), title: Text('Settings'), subtitle: Text('setting of app'),),
          ListTile(leading: Icon(Icons.map), title: Text('Map'), subtitle: Text('mappps'),),
          ListTile(leading: Icon(Icons.photo_album), title: Text('Album'), subtitle: Text('album of photos'),),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone'), subtitle: Text('don"t call to us'),),
          ListTile(leading: Icon(Icons.contacts), title: Text('Contacts'), subtitle: Text('our contacts'),),
          ListTile(leading: Icon(Icons.settings), title: Text('Settings'), subtitle: Text('setting of app'),),
        ],)),
        Center(child: GridView.extent(
          primary: false, 
          padding: const EdgeInsets.all(16), 
          crossAxisSpacing: 10, 
          mainAxisSpacing: 10, 
          maxCrossAxisExtent: 200,
          children: <Widget>[
            Container(padding: const EdgeInsets.all(8), color: Colors.red, child: const Text('1', style: TextStyle(fontSize: 20)),),
            Container(padding: const EdgeInsets.all(8), color: Colors.orange, child: const Text('2', style: TextStyle(fontSize: 20)),),
            Container(padding: const EdgeInsets.all(8), color: Colors.yellow, child: const Text('3', style: TextStyle(fontSize: 20)),),
            Container(padding: const EdgeInsets.all(8), color: Colors.green, child: const Text('4', style: TextStyle(fontSize: 20)),),
            Container(padding: const EdgeInsets.all(8), color: Colors.blue, child: const Text('5', style: TextStyle(fontSize: 20)),),
            Container(padding: const EdgeInsets.all(8), color: Colors.purple, child: const Text('6', style: TextStyle(fontSize: 20)),),
          ],),),
      ]),
    ));
  }
}
