import 'dart:collection';

import 'package:flutter/material.dart';

import '../models/feed.dart';

class FeedData extends ChangeNotifier {
  final List<Feed> _feeds = [
    // Dummy feed data
    Feed(0,
        profileImage:
            'https://images.unsplash.com/photo-1585980516944-df4fcf837ea6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8VGlrbF9DYzdjRTB8fGVufDB8fHx8&dpr=1&auto=format&fit=crop&w=294&q=60',
        userName: 'Tom Pill',
        userLocation: 'Lagos, Nigeria',
        postTime: '8:06am',
        farmProduction: 'Grains',
        weightOfProduct: '1kg',
        pictureOfProduct:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
        isOnline: false),
    Feed(
      0,
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
    ),
    Feed(
      0,
      profileImage: null,
      userName: 'Manoel Queen',
      userLocation: 'Lagos, Nigeria',
      postTime: '8:06am',
      farmProduction: 'Grains',
      weightOfProduct: '1kg',
      pictureOfProduct:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
      isOnline: true,
    ),
    Feed(
      0,
      profileImage: null,
      userName: 'Tim Leam',
      userLocation: 'Lagos, Nigeria',
      postTime: '8:06am',
      farmProduction: 'Grains',
      weightOfProduct: '1kg',
      pictureOfProduct:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
      isOnline: false,
    ),
    Feed(
      0,
      profileImage:
          'https://images.unsplash.com/photo-1572965733194-784e4b4efa45?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8OTk0ODgxN3x8ZW58MHx8fHw%3D&dpr=1&auto=format&fit=crop&w=294&q=60',
      userName: 'Manoel Haim',
      userLocation: 'Lagos, Nigeria',
      postTime: '8:06am',
      farmProduction: 'Grains',
      weightOfProduct: '1kg',
      pictureOfProduct:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
      isOnline: false,
    ),
    Feed(
      0,
      profileImage: null,
      userName: 'Manoel Haim',
      userLocation: 'Lagos, Nigeria',
      postTime: '8:06am',
      farmProduction: 'Grains',
      weightOfProduct: '1kg',
      pictureOfProduct:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
      isOnline: true,
    ),
    Feed(
      0,
      profileImage:
          'https://images.unsplash.com/photo-1535970589542-8d1203825ef6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8MjIxOTQ0NHx8ZW58MHx8fHw%3D&dpr=1&auto=format&fit=crop&w=294&q=60',
      userName: 'Werner Haim',
      userLocation: 'Lagos, Nigeria',
      postTime: '8:06am',
      farmProduction: 'Grains',
      weightOfProduct: '1kg',
      pictureOfProduct:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
      isOnline: false,
    ),
    Feed(
      0,
      profileImage:
          'https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8Mzg2ODI5MDV8fGVufDB8fHx8&dpr=1&auto=format&fit=crop&w=126&q=60',
      userName: 'Manoel Null',
      userLocation: 'Lagos, Nigeria',
      postTime: '8:06am',
      farmProduction: 'Grains',
      weightOfProduct: '1kg',
      pictureOfProduct:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdLdDZlImzbFj-C2HYucrzAcJ7id9WcFWAdA&usqp=CAU',
      isOnline: true,
    ),
  ];
  UnmodifiableListView<Feed> get feeds => UnmodifiableListView(_feeds);

  void addFeed(Feed feed) {
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
