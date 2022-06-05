import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/config/appTheme.dart';
import 'package:zero_waste/providers/chat_data.dart';
import 'package:zero_waste/widgets/customer_user_info.dart';
import 'package:zero_waste/widgets/messge_stream.dart';
import '../utils/user_preferences.dart';

class ChatScreen extends StatefulWidget {
  final CustomerUserInfo? customerUserChatInfo;
  ChatScreen({
    Key? key,
    required this.customerUserChatInfo,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  UserPreferences userPreferences = UserPreferences();
  final textFieldController = TextEditingController();
  String textValue = '';
  int _selectedIndex = 1;

  @override
  void dispose() {
    textFieldController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatData>(
      builder: (context, chatData, child) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                ListTile(
                  leading: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios,
                        color: Colors.black, size: 25.0),
                  ),
                  title: widget.customerUserChatInfo,
                  trailing: const Icon(Icons.search, size: 32),
                ),
                const Divider(color: Colors.green),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Expanded(child: MessagesStream()),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Material(
                      elevation: 20.0,
                      borderRadius: ThemeHelper().textFieldBorderRadius,
                      // color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                controller: textFieldController,
                                decoration: ThemeHelper()
                                    .textFieldInputDecoration('Message'),
                                onChanged: (value) =>
                                    setState(() => textValue = value),
                              ),
                            ),
                            textValue == ''
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(
                                        Icons.add,
                                        size: 30,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 5.0),
                                      Icon(Icons.emoji_emotions,
                                          size: 25, color: Colors.grey),
                                      SizedBox(width: 5.0),
                                      Icon(
                                        Icons.camera_alt,
                                        size: 25,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  )
                                : GestureDetector(
                                    onTap: () => {
                                      setState(() {
                                        textFieldController.clear();
                                        chatData.addChatMessage(userPreferences,
                                            textValue, true, true);
                                      }),
                                    },
                                    child: Image.asset(
                                      'assets/images/send_icon.png',
                                      height: 22.5,
                                      width: 22.47,
                                      color: Colors.blue,
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0)
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/feed_icon.png',
                  height: 22.5,
                  width: 22.47,
                  color: _selectedIndex == 1 ? Colors.green : Colors.grey,
                ),
                label: 'Feed'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/product_icon.png',
                  height: 22.5,
                  width: 22.47,
                  color: _selectedIndex == 2 ? Colors.green : Colors.grey,
                ),
                label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Account'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
