import 'package:micro_core/micro_core.dart';

abstract class MicroApp {
  String get microAppName;

  Map<String, WidgetBuildArgs> get routes;

  void Function() get injectionsRegister;

  void Function() get createListener;
}
