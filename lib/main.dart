import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: "Nunito"),
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
      body: Stack(
        children: <Widget>[
          Container(
            color: Theme.of(context).accentColor,
            height: 35,
          ),
          Positioned(
            right: 0,
            child: Text("6",
                style: TextStyle(fontSize: 150, color: Color(0x10000000))),
          ),
          _mainContent(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Column _mainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Sunday",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _buttonDesign(context),
        ),
        _taskIncomplete("Create new app using flutter"),
        _taskIncomplete("Create new app using flutter"),
        _taskIncomplete("Create new app using flutter"),
        _taskIncomplete("Create new app using flutter"),
        Divider(),
        SizedBox(
          height: 16,
        ),
        _taskComplete("Create new app using flutter"),
        _taskComplete("Create new app using flutter"),
      ],
    );
  }

  Widget _taskIncomplete(String task) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, bottom: 20),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.radio_button_unchecked,
            color: Theme.of(context).accentColor,
            size: 20,
          ),
          SizedBox(
            width: 18,
          ),
          Text(
            task,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget _taskComplete(String task) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, bottom: 20),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.radio_button_checked,
            color: Theme.of(context).accentColor,
            size: 20,
          ),
          SizedBox(
            width: 18,
          ),
          Text(task, style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }

  Widget _buttonDesign(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              padding: const EdgeInsets.all(14),
              child: Text("Task"),
            ),
          ),
          SizedBox(
            width: 32,
          ),
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Theme.of(context).accentColor),
                  borderRadius: BorderRadius.circular(12)),
              color: Colors.white,
              textColor: Theme.of(context).accentColor,
              padding: const EdgeInsets.all(14),
              child: Text("Events"),
            ),
          )
        ],
      ),
    );
  }
}
