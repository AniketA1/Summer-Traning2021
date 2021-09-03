import 'package:flutter/material.dart';
main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.add,
          color: Colors.red,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 45.0,
              left: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    color: Colors.red,
                    size: 30.0,
                  ),
                  radius: 30.0,
                  backgroundColor: Colors.deepPurple,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'MY APP',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.brown,
                  ),
                ),
                Text(
                  'List of Tasks',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.brown,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    child: ListTile(
                      title: Text('1st Title !!'),
                      trailing: Checkbox(
                        value: true,
                        onChanged: (myx) {},
                      ),
                      subtitle: Text('This is 1st subtitle'),
                      leading: Icon(Icons.email),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('2nd Title!!'),
                      trailing: Checkbox(
                        value: true,
                        onChanged: (myx) {},
                      ),
                      subtitle: Text('This is 2nd subtitle'),
                      leading: Icon(Icons.email),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Its Title!!'),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (myx) {},
                      ),
                      subtitle: Text('This is subtitle'),
                      leading: Icon(Icons.email),
                    ),
                  ),
                ],
              ),
              //  height: 400.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
