// local_notification.dart
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationManager {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  LocalNotificationManager() {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    _initialize();
  }

  Future<void> _initialize() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    final InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );
  }

  Future<void> _onSelectNotification(String payload) async {
    // Handle when notification is tapped
    print('Notification Tapped with Payload: $payload');
  }

  Future<void> showNotification({
    int id = 0,
    String title = 'Default Title',
    String body = 'Default Body',
    String desc = 'Default Desc',
  }) async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'Novel Channel', // ID channel unik
      'Novel App',
      // Nama channel // Deskripsi channel
      importance: Importance.defaultImportance,
      priority: Priority.defaultPriority,
      showWhen: false,
      channelDescription: 'Channel for notifications from Novel App',
    );

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    flutterLocalNotificationsPlugin.show(
      id,
      title,
      body,
      platformChannelSpecifics,
      payload: 'item x',
    );
  }
}
