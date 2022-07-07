import 'package:eventbus/eventbus.dart';
import 'package:home/app/module/presenter/home_page.dart';
import 'package:micro_core/micro_core.dart';

class MicroAppHomeResolver implements MicroApp {
  MicroAppHomeResolver._internal();
  static final MicroAppHomeResolver _singleton = MicroAppHomeResolver._internal();
  factory MicroAppHomeResolver() => _singleton;

  var text = 'nothing...';

  @override
  void Function() get createListener => () {
        Eventbus.listen((event) {
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
