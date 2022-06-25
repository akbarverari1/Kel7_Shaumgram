import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationApi {
  static final _notifications = FlutterLocalNotificationsPlugin();

  static Future init({bool scheduled = false}) async {
    var initAndroidSettings = AndroidInitializationSettings('');
    var ios = IOSInitializationSettings();
    final settings = InitializationSettings(android: initAndroidSettings, iOS: ios);
    await _notifications.initialize(settings);
  }

  static Future showNotification({
  var id = 0,
    var title,
    var body,
    var payload
})async => _notifications.show(
      id,
      title,
      body,
      await notificationDetails());

  static notificationDetails() async {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id',
        'channel name',
        importance: Importance.max
      ),
      iOS: IOSNotificationDetails()
    );
  }

}