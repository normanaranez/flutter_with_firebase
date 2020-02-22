import 'package:flutter/material.dart';
import 'package:flutter_with_firebase/models/user.dart';
import 'package:flutter_with_firebase/screens/authenticate/authenticate.dart';
import 'package:flutter_with_firebase/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _user = Provider.of<User>(context);

    if(_user == null) {
      return Authenticate();
    }    
    return Home();
  }
}