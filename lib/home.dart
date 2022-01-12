import 'package:flutter/material.dart';
import 'package:reink/timecapsule.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF445977),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body:Stack(
          children: [
            Container(
                child: ListView(
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[background()]
                      ),

                    ],
                ),
            ),
          ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed:(){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TimeCapsule()));
        },
        tooltip: 'store time',
        child: Icon(Icons.add,),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/flower1.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/flower3.png'),
                ),
              ],
              accountName: Text('SEVEN'),
              accountEmail: Text('SEVEN@email.com'),
              onDetailsPressed: () {},
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.drafts,
                color: Colors.grey[850],
              ),
              title: Text('Time Capsule'),
              onTap: () {
                print('Time Capsule is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.grey[850],
              ),
              title: Text('Friends'),
              onTap: () {
                print('Friends is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  Widget background() {
    return Image.asset('images/one_tree_no.png',fit: BoxFit.fitWidth,);
  }

}
