import 'package:flutter/material.dart';

class CustomerUserInfo extends StatelessWidget {
  final String? imageUrl;
  final Widget title;
  final Widget? trailingWidget;
  const CustomerUserInfo({
    Key? key,
    this.imageUrl,
    required this.title,
    this.trailingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 23,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: imageUrl == null
                ? const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                    // size: 32,
                  )
                : Image.network(
                    imageUrl!,
                    fit: BoxFit.fill,
                    height: 50,
                    width: 50,
                  ),
          ),
        ),
        title: title,
        // subtitle: title,
        trailing: trailingWidget,
      ),
    );
  }
}
