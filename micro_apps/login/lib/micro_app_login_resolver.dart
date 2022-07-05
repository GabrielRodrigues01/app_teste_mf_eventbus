import 'package:login/app/module/presenter/login_page.dart';
import 'package:micro_core/micro_core.dart';

class MicroAppLoginResolver implements MicroApp {
  @override
  void Function() get createListener => () {};

  @override
  void Function() get injectionsRegister => () {};

  @override
  String get microAppName => 'micro_app_login';

  @override
  Map<String, WidgetBuildArgs> get routes => {
        '/': (_, __) => LoginPage(),
      };
}
