import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepPurple[300],
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Autofill'),
      ),
      body: Center(
        child: AutofillGroup(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: username,
                autofillHints: [AutofillHints.username],
                decoration: InputDecoration(hintText: 'username'),
              ),
              // FlatButton(
              //   onPressed: () {
              //     showDateRangePicker(
              //       context: context,
              //       firstDate: DateTime.now(),
              //       lastDate: DateTime(2025),
              //       helpText: 'tap',
              //     );
              //   },
              //   child: Text('Show Date Range'),
              // ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
