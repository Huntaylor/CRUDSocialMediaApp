import 'package:TestSocialMediaApp/presentation/screens/post_screen/post_screen_main.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'infrastructure/injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter('data');
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TESTSOCIALMEDIAAPP',
      theme: ThemeData(),
      home: PostScreen(),
      routes: {},
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => PostScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => PostScreen());
      },
    );
  }
}
