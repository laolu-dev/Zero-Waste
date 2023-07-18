import 'package:flutter/material.dart';

import '../../../widgets/list_views/user_chat_builder.dart';



class Connections extends StatefulWidget {
  static const id = '/Connection';
  const Connections({Key? key}) : super(key: key);

  @override
  State<Connections> createState() => _ConnectionsState();
}

class _ConnectionsState extends State<Connections> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // SearchBar(),
            SizedBox(height: 25),
            Flexible(child: UsersChatBuilder()),
          ],
        ),
      ),
    );
  }
}
