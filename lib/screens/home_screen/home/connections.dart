import 'package:flutter/material.dart';
import '../../../constants/constant.dart';
import '../../../widgets/notification_widget.dart';

class Connections extends StatefulWidget {
  const Connections({Key? key}) : super(key: key);

  @override
  State<Connections> createState() => _ConnectionsState();
}

class _ConnectionsState extends State<Connections> {
  ListTile connectUser(String name, String userType, String location) {
    return ListTile(
      minVerticalPadding: 12.5,
      leading: const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(
          'assets/images/john.png',
        ),
      ),
      title: Text(name),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(userType), Text(location)],
      ),
      trailing: TextButton(
        onPressed: () => Navigator.pushNamed(context, '/ChatScreen'),
        style: TextButton.styleFrom(
            minimumSize: const Size(91, 36),
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text('Chats', style: orTextStyle.copyWith(color: white)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 39,
                  width: 367,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon:
                            const Icon(Icons.arrow_back_ios_outlined, size: 20),
                        onPressed: () =>
                            Navigator.popAndPushNamed(context, '/Types'),
                      ),
                      TextField(
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                          constraints: const BoxConstraints(maxWidth: 251),
                          prefixIcon: IconButton(
                              onPressed: () {},
                              icon:
                                  const Icon(Icons.search, color: Colors.grey)),
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mic_none,
                                  color: Colors.black)),
                          hintText: 'Search for farmers',
                          filled: true,
                          fillColor: const Color(0xffE3FFF7),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(22)),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(22)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 7),
                      const NotificationWidget()
                    ],
                  ),
                ),
                const SizedBox(height: 28.5),
                Container(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height - 200),
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        connectUser('Usman', 'Crop Farmer', 'location'),
                    itemCount: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
