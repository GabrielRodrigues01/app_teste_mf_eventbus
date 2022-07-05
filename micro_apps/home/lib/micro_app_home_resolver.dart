import 'dart:developer';

import 'package:eventbus/eventbus.dart';
import 'package:home/app/module/presenter/home_page.dart';
import 'package:micro_core/micro_core.dart';

class MicroAppHomeResolver implements MicroApp {
  var text = 'nothing...';

  @override
  void Function() get createListener => () {
        Eventbus.listen((event) {
          log("MicroAppHomeResolver ======> $event");
          text = event;
        });
      };

  @override
  void Function() get injectionsRegister => () {};

  @override
  String get microAppName => 'micro_app_home';

  @override
  Map<String, WidgetBuildArgs> get routes => {
        '/home': (_, __) => HomePage(name: text),
      };
}
