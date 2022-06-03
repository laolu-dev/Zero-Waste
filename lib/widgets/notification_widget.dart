import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.0,
      width: 38.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(color: Colors.green)),
      child: Center(
        child: Stack(
          children: const [
            Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
            Positioned(
              left: 16.0,
              child: Icon(
                Icons.brightness_1,
                size: 9.0,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
