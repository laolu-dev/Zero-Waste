import 'package:flutter/material.dart';
import '../utils/config/res.dart';


import '../../../models/new_conversation.dart';

class ConnectionsProvider extends ChangeNotifier {
  final List<NewConnection> _newUser = [];

  List<NewConnection> get users => _newUser;

  
}
