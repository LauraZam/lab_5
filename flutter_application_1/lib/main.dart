import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
    return DefaultTabController(length: 4, child: Scaffold(
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
          Tab(icon: Icon(Icons.card_membership)),
          Tab(icon: Icon(Icons.line_weight_rounded))
        ],
        ),
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
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget> [
          Container(
          width: 300,
          height: 200,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
           color: Colors.red,
           elevation: 10,
           child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album, size:60),
                title: Text('Sonu Nigam', style: TextStyle(fontSize: 30),),
                subtitle: Text('Best of Sonu Nigam Music', style: TextStyle(fontSize: 18),),
              )
            ],
           ),
           ),),
           Container(
          width: 300,
          height: 200,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
           color: Colors.orange,
           elevation: 10,
           child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album, size:60),
                title: Text('Sonu Nigam', style: TextStyle(fontSize: 30),),
                subtitle: Text('Best of Sonu Nigam Music', style: TextStyle(fontSize: 18),),
              )
            ],
           ),
           ),),
           Container(
          width: 300,
          height: 200,
          padding: new EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
           color: Colors.yellow,
           elevation: 10,
           child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(radius: 30.0, backgroundImage: NetworkImage('https://cdn.britannica.com/22/187222-050-07B17FB6/apples-on-a-tree-branch.jpg')),
                title: Text('Strawberry Crème Cookie', style: TextStyle(fontSize: 24),),
                subtitle: Text('Best of Sonu Nigam Music', style: TextStyle(fontSize: 15),),
              )
            ],
           ),
           ),),
        ]),
        Padding(padding: 
        EdgeInsets.all(15),
        child: Center(
          child: ElevatedButton(
            onPressed: showToast,
            child: Text('CLick to Show'),
          ),
        ),)
      ]),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              margin: EdgeInsets.zero,
              padding:EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.greenAccent),
                accountName: Text('Usererere'), 
                accountEmail: Text('home@dartflutter.kz'),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.amberAccent,
                  ),
                ),
                )),
          new ListTile(
            title: new Text("Home"),
              leading: Icon(Icons.home),
            onTap: () {
            const snackdemo = SnackBar(
            content: Text('It"s a Home SnackBarr!!'),
            backgroundColor: Colors.blueAccent,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(5),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackdemo);
        },
          ),
          new ListTile(
            title: new Text("Profile"),
              leading: Icon(Icons.person),
            onTap: () {
            const snackdemo = SnackBar(
            content: Text('It"s a Profile SnackBarr!!'),
            backgroundColor: Colors.blueAccent,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(5),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackdemo);
        },
          ),
          new ListTile(
            title: new Text("Settings"),
              leading: Icon(Icons.settings),
            onTap: () {
            const snackdemo = SnackBar(
            content: Text('It"s a Settings SnackBarr!!'),
            backgroundColor: Colors.blueAccent,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(5),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackdemo);
        },
          ),
          new ListTile(
            title: new Text("Logout"),
              leading: Icon(Icons.logout),
            onTap: () {
            const snackdemo = SnackBar(
            content: Text('It"s a LogOut SnackBarr!!'),
            backgroundColor: Colors.blueAccent,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(5),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackdemo);
        },
          ),
          ],
        ),
      ),
    ));
  }
}
void showToast(){
  Fluttertoast.showToast(
    msg: 'TOAST NOTIFICATION',
    backgroundColor: Colors.grey,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    textColor: Colors.white
  );
}