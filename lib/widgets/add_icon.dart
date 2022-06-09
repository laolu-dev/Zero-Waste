import 'package:flutter/material.dart';

import '../screens/home_screen/feed/new_conversation_screen.dart';

class AddIcon extends StatelessWidget {
  final bool alignTextToRight;
  final bool isActive;
  const AddIcon({
    Key? key,
    required this.alignTextToRight,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        alignTextToRight
            ? Row(
                children: [
                  FloatingActionButton(
                    heroTag: null,
                    backgroundColor: Colors.grey,
                    onPressed: isActive
                        ? () => Navigator.pushNamed(
                            context, NewConversationScreen.id)
                        : null,
                    child: const Icon(Icons.add, size: 45),
                  ),
                  const SizedBox(width: 10.0),
                  const Text(
                    'New Conversation',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 14.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            : Row(
                children: [
                  const SizedBox(width: 5.0),
                  const Text(
                    'New Conversation',
                    style: TextStyle(
                      fontFamily: 'Jost',
                      fontSize: 14.0,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: null,
                    backgroundColor: Colors.green,
                    onPressed: () =>
                        Navigator.pushNamed(context, NewConversationScreen.id),
                    child: const Icon(Icons.add, size: 45),
                  ),
                ],
              ),
      ],
    );
  }
}
