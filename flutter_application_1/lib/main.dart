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
    return DefaultTabController(length: 5, child: Scaffold(
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
          Tab(icon: Icon(Icons.blinds_closed_outlined)),
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
          ListTile(leading: Icon(Icons.face), title: Text('Face'), subtitle: Text('Face ID?'),),
          ListTile(leading: Icon(Icons.key), title: Text('Password'), subtitle: Text('Password change'),),
          ListTile(leading: Icon(Icons.verified), title: Text('Verification'), subtitle: Text('your verification'),),
          ListTile(leading: Icon(Icons.dark_mode), title: Text('Dark mode'), subtitle: Text('turn on dark mode'),),
          ListTile(leading: Icon(Icons.safety_check), title: Text('Safety check'), subtitle: Text('turn on safety check'),),
        ],)),
        Center(child: GridView.extent(
          primary: false, 
          padding: const EdgeInsets.all(16), 
          crossAxisSpacing: 10, 
          mainAxisSpacing: 10, 
          maxCrossAxisExtent: 200,
          children: <Widget>[
            Image.network('https://static.wikia.nocookie.net/cookierunkingdom/images/a/ac/Awakened_dark_cacao_illustration.png/revision/latest/scale-to-width-down/267?cb=20240628113830'),
            Image.network('https://static.wikia.nocookie.net/cookierunkingdom/images/6/66/Awakened_golden_cheese_illustration.png/revision/latest/scale-to-width-down/268?cb=20241104184818'),
            Image.network('https://static.wikia.nocookie.net/cookierunkingdom/images/8/8a/Awakened_pure_vanilla_illustration.png/revision/latest/scale-to-width-down/268?cb=20250213083420'),
            Image.network('https://static.wikia.nocookie.net/cookierunkingdom/images/c/cf/Awakened_hollyberry_illustration.png/revision/latest/scale-to-width-down/268?cb=20250605073451'),
            Image.network('https://static.wikia.nocookie.net/cookierunkingdom/images/0/08/Awakened_white_lily_illustration.png/revision/latest/scale-to-width-down/268?cb=20251115004950'),
            Image.network('https://static.wikia.nocookie.net/cookierunkingdom/images/0/0d/Mystic_flour_illustration.png/revision/latest/scale-to-width-down/268?cb=20241113165741'),
            Image.network('https://static.wikia.nocookie.net/cookierunkingdom/images/2/25/Burning_spice_illustration.png/revision/latest/scale-to-width-down/268?cb=20241113170232'),
            Image.network('https://static.wikia.nocookie.net/cookierunkingdom/images/d/d4/Shadow_milk_illustration.png/revision/latest/scale-to-width-down/268?cb=20250117144004'),
            Image.network('https://static.wikia.nocookie.net/cookierunkingdom/images/9/99/Eternal_sugar_illustration.png/revision/latest/scale-to-width-down/268?cb=20250507010134'),
            Image.network('https://static.wikia.nocookie.net/cookierunkingdom/images/f/f7/Silent_salt_illustration.png/revision/latest/scale-to-width-down/267?cb=20251012003000'),
          ],),),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const ListTile(
                leading: CircleAvatar(radius: 30.0, backgroundImage: NetworkImage('https://sm.ign.com/ign_in/movie/default/how-to-train-your-dragon-live-action-zbyf600_kx6f.jpg')),
                title: Text('Night Fury', style: TextStyle(fontSize: 30),),
                subtitle: Text('Night Fury, get down!', style: TextStyle(fontSize: 18),),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const ListTile(
                leading: CircleAvatar(radius: 30.0, backgroundImage: NetworkImage('https://static.wikia.nocookie.net/cookierun/images/e/e1/Strawberry_cream_cookie.png/revision/latest/scale-to-width/360?cb=20231214011038')),
                title: Text('Strawberry Creme Cookie', style: TextStyle(fontSize: 24),),
                subtitle: Text('How do you read this address?', style: TextStyle(fontSize: 15),),
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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(radius: 30.0, backgroundImage: NetworkImage('https://cdn.britannica.com/22/187222-050-07B17FB6/apples-on-a-tree-branch.jpg')),
                title: Text('Red Apples', style: TextStyle(fontSize: 24),),
                subtitle: Text('Red Delicious, Gala, Honeycrisp, and McIntosh', style: TextStyle(fontSize: 15),),
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
                accountName: Text('Pom-Pom'), 
                accountEmail: Text('home@dartflutter.kz'),
                currentAccountPicture: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.amberAccent,
                  ),
                  child: Image.network('https://i.redd.it/g9z0a0x25a0b1.jpg', fit: BoxFit.cover,),
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
    msg: 'Hello, Flutter!',
    backgroundColor: Colors.grey,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    textColor: Colors.white
  );
}