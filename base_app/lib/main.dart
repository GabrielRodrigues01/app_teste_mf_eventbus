import 'package:flutter/material.dart';
import 'package:home/home.dart';
import 'package:login/login.dart';
import 'package:micro_core/app/base_app.dart';
import 'package:micro_core/app/micro_core_utils.dart';
import 'package:micro_core/app/micro_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget with BaseApp {
  MyApp({Key? key}) : super(key: key) {
    super.registerInjections();
    super.registerRouters();
    super.registerListeners();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Teste',
      theme: ThemeData(primarySwatch: Colors.blue),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  Map<String, WidgetBuildArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps => [
        MicroAppLoginResolver(),
        MicroAppHomeResolver(),
      ];
}
