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
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text('Re:ink'),
            ),
            ListTile(
              title: const Text('타임캡슐 보관함'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('친구 관리'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('계정 관리'),
              onTap: () {
                Navigator.pop(context);
              },
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
