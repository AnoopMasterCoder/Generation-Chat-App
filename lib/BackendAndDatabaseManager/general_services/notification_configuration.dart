import 'dart:convert';

import 'package:generation/BackendAndDatabaseManager/global_controller/different_types.dart';
import 'package:generation/main.dart';
import 'package:http/http.dart';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class SendNotification {
  Future<void> messageNotificationClassifier(MediaTypes mediaTypes,
      {String textMsg = '',
      required String connectionToken,
      required String currAccountUserName}) async {
    print('Token is: $connectionToken');

    switch (mediaTypes) {
      case MediaTypes.Text:
        await sendNotification(
          token: connectionToken,
          title: "$currAccountUserName Sent You a Message",
          body: textMsg,
        );
        break;

      case MediaTypes.Voice:
        await sendNotification(
          token: connectionToken,
          title: "$currAccountUserName Sent You a Voice",
          body: '',
        );
        break;

      case MediaTypes.Image:
        await sendNotification(
          token: connectionToken,
          title: "$currAccountUserName Sent You a Image",
          body: textMsg,
        );
        break;

      case MediaTypes.Video:
        await sendNotification(
          token: connectionToken,
          title: "$currAccountUserName Sent You a Video",
          body: textMsg,
        );
        break;

      case MediaTypes.Sticker:
        await sendNotification(
          token: connectionToken,
          title: "$currAccountUserName Sent You a Sticker",
          body: '',
        );
        break;

      case MediaTypes.Location:
        await sendNotification(
          token: connectionToken,
          title: "$currAccountUserName Sent You Device Location",
          body: textMsg,
        );
        break;

      case MediaTypes.Document:
        await sendNotification(
          token: connectionToken,
          title: "$currAccountUserName Sent You a Document",
          body: textMsg,
        );
        break;

      case MediaTypes.Indicator:
        break;
    }
  }

  Future<int> sendNotification(
      {required String token,
      required String title,
      required String body}) async {
    try {
      print('Send');

      final String _serverKey = 'AAAAY131ki0:APA91bHHUGqBiAyj1KxY3n44vEkB45ID-0mms36GvpRa7Mg5mnl2n9Oh1rBxdOWaie8KCYEyWWpq4uSRctyuku0bYdbBSgdQtkcK7MOJit8lKb9YXGem3niSOGAtXx0uCiarJkM_hTba';

      final Response response = await post(
        Uri.parse('https://fcm.googleapis.com/fcm/send'),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'key=$_serverKey',
        },
        body: jsonEncode(<String, dynamic>{
          'notification': <String, dynamic>{
            'body': body,
            'title': title,
            "android_channel_id": "high_importance_channel",
            "sound": "default",
            "priority": "high",
            "click_action": "FLUTTER_NOTIFICATION_CLICK",
          },
          'priority': 'high',
          'data': <String, dynamic>{
            'click_action': 'FLUTTER_NOTIFICATION_CLICK',
            'id': '1',
            'status': 'done',
            "collapse_key": "type_a",
          },
          'to': token,
        }),
      );

      print('Response is: ${response.statusCode}    ${response.body}');

      return response.statusCode;
    } catch (e) {
      showDialog(
          context: navigatorKey!.currentContext!,
          builder: (_) => AlertDialog(
                title: Text('Send Notification Error'),
                content: Text(e.toString()),
              ));

      return 404;
    }
  }
}

class ForeGroundNotificationReceiveAndShow {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final AndroidInitializationSettings _androidInitializationSettings =
      AndroidInitializationSettings('app_icon');

  ForeGroundNotificationReceiveAndShow() {
    final InitializationSettings _initializationSettings =
        InitializationSettings(android: _androidInitializationSettings);

    print('Noti Here');

    initAll(_initializationSettings);
  }

  initAll(InitializationSettings initializationSettings) async {
    var response = await _flutterLocalNotificationsPlugin.initialize(
        initializationSettings, onSelectNotification: (payload) async {
      return 'On Select Notification Payload: $payload';
    });

    print('Local Notification Initialization Status: $response');
  }

  Future<void> showNotification(
      {required String title, required String body}) async {
    try {
      final AndroidNotificationDetails androidDetails =
          AndroidNotificationDetails(
              "Channel ID", "Generation Official", "This is Generation App",
              importance: Importance.max);

      final NotificationDetails generalNotificationDetails =
          NotificationDetails(android: androidDetails);

      await _flutterLocalNotificationsPlugin
          .show(0, title, body, generalNotificationDetails, payload: title);
    } catch (e) {
      showDialog(
        context: navigatorKey!.currentContext!,
        builder: (_) => AlertDialog(
          title: Text('Show Notification Error'),
          content: Text(e.toString()),
        ),
      );
    }
  }
}
