import 'package:flutter/material.dart';
import '../../../config/res.dart';


import '../../../models/new_conversation.dart';

final _initialData = List.generate(
  50,
  (index) => NewConnection(
    profileUrl:
        'https://images.unsplash.com/photo-1585980516944-df4fcf837ea6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8VGlrbF9DYzdjRTB8fGVufDB8fHx8&dpr=1&auto=format&fit=crop&w=294&q=60',
    name: 'John Doe',
    farmerType: 'Black Fly Farmer',
    location: 'Lagos, Nigeria',
  ),
);

final mockData = [
  ..._initialData,
  NewConnection(
      name: 'Samuel',
      profileUrl: Resources.iString.image2,
      farmerType: 'Soldier',
      location: 'Benue'),
  NewConnection(
      name: 'Joel',
      profileUrl: Resources.iString.image2,
      farmerType: 'Soldier',
      location: 'Benue')
];

class ConnectionsProvider extends ChangeNotifier {
  final List<NewConnection> _newUser = mockData;

  List<NewConnection> get users => _newUser;
}
