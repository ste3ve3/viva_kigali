import 'package:cnevent/firebase_options.dart';
import 'package:cnevent/utils/appconstant.dart';
import 'package:cnevent/view/splash/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  MobileAds.instance.initialize();

  MobileAds.instance.updateRequestConfiguration(
      RequestConfiguration(testDeviceIds: [testDevice]));

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(_messageHandler);

  // Step required to send ios push notification
  NotificationSettings settings =
      await FirebaseMessaging.instance.requestPermission(
    alert: true,
    badge: true,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission');
  } else {
    print('User declined or has not accepted permission');
  }

  runApp(const MyApp());
}

Future<void> _messageHandler(RemoteMessage message) async {
  print(message.data.toString());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CN Event',
      transitionDuration: const Duration(milliseconds: 500),
      defaultTransition: Transition.fadeIn,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "GoogleSans",
        colorScheme: ColorScheme.fromSeed(seedColor: appThemeColor),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
