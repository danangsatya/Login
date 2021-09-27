import 'package:flutter/material.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Admin',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Congratulation you has been success log in dasboard',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[welcome, lorem],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: body,
      floatingActionButton: FloatingActionButton(
          child: Text("OUT"),
          onPressed: () {
            Navigator.of(context).pushNamed(LoginPage.tag);
          }),
    );
  }
}
