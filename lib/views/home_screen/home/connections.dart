import 'package:flutter/material.dart';
import 'package:zero_waste/widgets/app_bars/search_appbar.dart';

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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              children: const [
                SearchBar(),
                SizedBox(height: 25),
                UserChatBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
