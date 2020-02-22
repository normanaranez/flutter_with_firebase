import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/services/auth.dart';

class Home extends StatelessWidget {
  
  final AuthService _auth = AuthService(); 

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          title: Text('Brew'),
          backgroundColor: Colors.brown[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () async {
                  await _auth.signOut();
                },
                icon: Icon(Icons.person),
                label: Text('logout'))
          ],
        ),
      ),
    );
  }
}
