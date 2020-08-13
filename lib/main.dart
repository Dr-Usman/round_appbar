import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rounded_floating_app_bar/rounded_floating_app_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, isInnerBoxScroll) {
          return [
            RoundedFloatingAppBar(
              actions: <Widget>[
                IconButton(
                  icon: CircleAvatar(
                    backgroundColor:
                        Theme.of(context).platform == TargetPlatform.iOS
                            ? Colors.blue
                            : Colors.green,
                    child: Text("U", style: TextStyle(fontSize: 20.0)),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        child: new AlertDialog(
                          title: new Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              Text("E-Reminder"),
                              //Text("E-Reminder"),
                            ],
                          ),
                          content: Column(
                            children: <Widget>[
                              ListTile(
                                title: Text("Muhammad Usman"),
                                subtitle: Text("dr.usman7860@gmail.com"),
                                leading: CircleAvatar(
                                  child: Text(
                                    "U",
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: double.infinity, // match_parent
                                child: RaisedButton(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  child: Text("Menage your Account"),
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(
                                width: double.infinity, // match_parent
                                child: RaisedButton(
                                  textColor: Colors.black,
                                  color: Colors.white,
                                  child: Text("Logout"),
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(height: 10),
                              Divider(
                                height: 1,
                                thickness: 0.5,
                                color: Colors.green[900],
                              ),
                              ListTile(
                                title: Text("Joker Gamming"),
                                subtitle: Text("joker69@gmail.com"),
                                leading: CircleAvatar(
                                  child: Text(
                                    "J",
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text("Levi Athan"),
                                subtitle: Text("levii97@gmail.com"),
                                leading: CircleAvatar(
                                  child: Text(
                                    "L",
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text("Add another account"),
                                leading: Icon(Icons.person_add),
                                onTap: () {
                                  //code
                                },
                              ),
                              ListTile(
                                title: Text(
                                  "Menage accounts on this device",
                                  style: TextStyle(fontSize: 13),
                                ),
                                leading: Icon(Icons.person_pin),
                                onTap: () {
                                  //code
                                },
                              ),
                              SizedBox(height: 10),
                              Divider(
                                height: 1,
                                thickness: 0.5,
                                color: Colors.green[900],
                              ),
                            ],
                          ),
                        ));
                  },
                ),
              ],
              floating: true,
              snap: true,
              title: Text("EVENTS",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              backgroundColor: Colors.white,
            ),
          ];
        },
        body: ListView.builder(
          itemBuilder: (_, i) => Card(
            child: ListTile(
              leading: FlutterLogo(size: 64.0),
              title: Text('Three-line ListTile'),
              subtitle:
                  Text('A sufficiently long subtitle warrants three lines.'),
              trailing: Icon(Icons.star_border),
              isThreeLine: true,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader(
            //   child: Text('Drawer Header'),
            //   decoration: BoxDecoration(
            //     color: Colors.green[500],
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Dee Usman"),
              accountEmail: Text("dr.usman7860@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.white,
                child: Text(
                  "U",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                    backgroundColor:
                        Theme.of(context).platform == TargetPlatform.iOS
                            ? Colors.blue
                            : Colors.white,
                    child: FlutterLogo()),
              ],
            ),

            ListTile(
              title: Text('Feedback'),
              leading: Icon(Icons.feedback),
              onTap: () {
                Navigator.pop(context);
                //         Navigator.of(context).push(MaterialPageRoute(
                // builder: (BuildContext context) => NewPage("Page two")));
              },
            ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            Divider(height: 1, thickness: 0.5, color: Colors.green[900]),

            ListTile(
              title: Text("About"),
              leading: Icon(Icons.info),
              dense: true,
              onTap: () {
                /* showAboutDialog(
                  context: context,
                  applicationVersion: '0.0.1',
                  //applicationName: 'SG',
                  applicationIcon: (FlutterLogo(size: 25)),
                  applicationLegalese:
                      'This Application is developed by DeeUsman.',
                  // children: <Widget>[Text("Blah blah....")],
                ); */
                showDialog(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                          title: new Text("About"),
                          content: new Text(
                              "This Application is Developed by DeeUsman"),
                          actions: <Widget>[
                            CupertinoDialogAction(
                              isDefaultAction: true,
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            CupertinoDialogAction(
                              child: Text("cancel"),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
