import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:provider/provider.dart';
import 'package:zero_waste/features/chats/presentation/screens/new_conversation_screen.dart';
import '../../../../core/constants/styles/colors.dart';
import '../../../../core/models/new_conversation.dart';
import '../../../../provider/add_new_conversation.dart';
import '../../../../provider/connections.dart';
import '../widget/connection_tile.dart';
import '../widget/search_text_field.dart';

class Connections extends StatelessWidget {
  static const id = '/Connection';
  const Connections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.black,
                      ),
                    ),
                    const Flexible(child: SearchTextField()),
                  ],
                ),
              ),
              Consumer2<ConnectionsProvider, ConversationsProvider>(
                builder: (context, connections, converse, child) {
                  return Flexible(
                    child: ListView.builder(
                      padding:
                          const EdgeInsets.only(top: 10, right: 12, left: 6),
                      itemBuilder: (context, index) {
                        final connect = connections.users[index];
                        return ConnectionTile(
                          key: ValueKey(index),
                          name: connect.name,
                          profileUrl: connect.profileUrl,
                          farmerType: connect.farmerType,
                          location: connect.location,
                          btnAction: 'Add',
                          onTap: () {
                            converse.addNewConversation(
                              NewConnection(
                                name: connect.name,
                                profileUrl: connect.profileUrl,
                                farmerType: connect.farmerType,
                                location: connect.location,
                              ),
                            );
                            pushNewScreen(context,
                                screen: const NewConversationScreen());
                          },
                        );
                      },
                      itemCount: connections.users.length,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
