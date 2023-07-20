import 'package:flutter/material.dart';

import '../../../models/new_conversation.dart';

class ConversationsProvider extends ChangeNotifier {
  final List<NewConnection> _newUser = [];

  List<NewConnection> get users => _newUser;

  void addNewConversation(NewConnection connection) {
    _newUser.add(
      NewConnection(
          name: connection.name,
          profileUrl: connection.profileUrl,
          farmerType: connection.farmerType,
          location: connection.location),
    );
    notifyListeners();
  }
}
