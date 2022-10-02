import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/*class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  final BehaviorSubject<String?> onNotificationClick = BehaviorSubject();

  static void initialize() {
    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: AndroidInitializationSettings("@mipmap/ic_launcher"));
    _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static void display(RemoteMessage message) async {
    try {
      print("In Notification method");
      // int id = DateTime.now().microsecondsSinceEpoch ~/1000000;
      Random random = new Random();
      int id = random.nextInt(1000);
      final NotificationDetails notificationDetails = NotificationDetails(
          android: AndroidNotificationDetails(
        "mychanel",
        "my chanel",
        importance: Importance.max,
        priority: Priority.high,
      ));
      print("my id is ${id.toString()}");

      await _flutterLocalNotificationsPlugin.show(
        id,
        message.notification!.title,
        message.notification!.title,
        notificationDetails,
      );
    } on Exception catch (e) {
      print('Error>>>$e');
    }
  }
  void onDidReceiveNotificationResponse(NotificationResponse notificationResponse) async {
    final String? payload = notificationResponse.payload;
    if (notificationResponse.payload != null) {
      debugPrint('notification payload: $payload');
    }
    await Navigator.push(
      context,
      MaterialPageRoute<void>(builder: (context) => SecondScreen(payload)),
    );
}

  void onDidReciveLocalNotification(
      int id, String? title, String? body, String? payload) {
    print('id $id');
  }

  onSelectNOtifaction(String? payload) {
    print('payload $payload');
  }
}*/


class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin
  _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  static void initialize() {
    final InitializationSettings initializationSettings =
    InitializationSettings(
        android: AndroidInitializationSettings("@mipmap/ic_launcher"));
   // _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static void display(RemoteMessage message) async{
    try {
      print("In Notification method");
      // int id = DateTime.now().microsecondsSinceEpoch ~/1000000;
      Random random = new Random();
      int id = random.nextInt(1000);
      final NotificationDetails notificationDetails = NotificationDetails(
          android: AndroidNotificationDetails(
            "mychanel",
            "my chanel",
            importance: Importance.max,
            priority: Priority.high,
          )

      );
      print("my id is ${id.toString()}");
      await _flutterLocalNotificationsPlugin.show(

        id,
        message.notification!.title,
        message.notification!.title,
        notificationDetails,);
    } on Exception catch (e) {
      print('Error>>>$e');
    }
  }
}