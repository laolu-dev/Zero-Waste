import 'package:flutter/material.dart';
import '../../domain/new_conversation.dart';

class ConnectionsProvider extends ChangeNotifier {
  final List<NewConnection> _newUser = [];

  List<NewConnection> get users => _newUser;

  
}
