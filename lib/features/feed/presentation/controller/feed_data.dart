import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:zero_waste/features/feed/domain/feed.dart';


class FeedData extends ChangeNotifier {
  final List<FeedInfo> _feeds = [
    // Dummy feed data
    FeedInfo(
        profileImage:
            'https://images.unsplash.com/photo-1585980516944-df4fcf837ea6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8VGlrbF9DYzdjRTB8fGVufDB8fHx8&dpr=1&auto=format&fit=crop&w=294&q=60',
        userName: 'Tom Pill',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        isOnline: false,
        typeOfFarmer: '',
        numberOfLikes: 3),
    FeedInfo(
        profileImage:
            'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
        userName: 'Haim Paul',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        isOnline: true,
        typeOfFarmer: '',
        numberOfLikes: 3),
    FeedInfo(
        profileImage:
            'https://images.unsplash.com/photo-1585980516944-df4fcf837ea6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8VGlrbF9DYzdjRTB8fGVufDB8fHx8&dpr=1&auto=format&fit=crop&w=294&q=60',
        userName: 'Tom Pill',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        isOnline: false,
        typeOfFarmer: '',
        numberOfLikes: 3),
    FeedInfo(
        profileImage:
            'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
        userName: 'Haim Paul',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        isOnline: true,
        typeOfFarmer: '',
        numberOfLikes: 3),
    FeedInfo(
        profileImage:
            'https://images.unsplash.com/photo-1585980516944-df4fcf837ea6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8VGlrbF9DYzdjRTB8fGVufDB8fHx8&dpr=1&auto=format&fit=crop&w=294&q=60',
        userName: 'Tom Pill',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        isOnline: false,
        typeOfFarmer: '',
        numberOfLikes: 3),
    FeedInfo(
        profileImage:
            'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60',
        userName: 'Haim Paul',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        isOnline: true,
        typeOfFarmer: '',
        numberOfLikes: 3),
  ];
  UnmodifiableListView<FeedInfo> get feeds => UnmodifiableListView(_feeds);

  void addFeed(FeedInfo feed) {
    _feeds.add(feed);
    notifyListeners();
  }

  Text isOnline(int index) => _feeds[index].isOnline
      ? const Text(
          'Online',
          style: TextStyle(color: Colors.blue),
        )
      : const Text('Offline', style: TextStyle(color: Colors.grey));

  String getUserLocation(int index) => _feeds[index].userLocation;

  String getFarmProduct(int index) => _feeds[index].farmProduction;
  int get length => _feeds.length;
}
