import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.iOS ? 0 : 0.5,
      ),
      body: Container(
        child: Center(
          child: Text("Pull the drawer"),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            // DrawerHeader(
            //   child: Text("This is a drawer Hader"),
            //   decoration: BoxDecoration(color: Colors.amber),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("ananddasani"),
              accountEmail: Text("ananddasnai0@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/74413402?v=4"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  child: Text("A"),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("ananddasani0@gmail.com"),
              trailing: Icon(Icons.email),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.accessibility_outlined),
      ),
    );
  }
}
