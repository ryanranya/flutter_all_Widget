import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:jwell_hlapp/core/router/application.dart';
import 'package:jwell_hlapp/core/router/router.dart';
import 'package:jwell_hlapp/core/router/router_config.dart';
import 'package:jwell_hlapp/core/usershared/user_loginmessage.dart';
import 'package:jwell_hlapp/ui/pages/login/phone_login.dart';
import 'package:jwell_hlapp/ui/pages/main/main.dart';
import 'package:jwell_hlapp/ui/shared/app_theme.dart';


class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoginState = false;
  _MyAppState(){
    // 注册 fluro routes
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
    RYUserLoginMessage.getLoginState().then((data){
      setState(() {
        isLoginState = data;
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: '海螺协同',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Application.router.generator,
//      onGenerateRoute: RYRouter.generateRoute,
//      关于主题
      theme: RYAppTheme.norTheme,

//      关于路由
//      initialRoute: RYRouter.initialRoute,
      home: RYMainScreen(),
//      home: RYLoginScreen(),
      onUnknownRoute: RYRouter.unknownRoute,
    );
  }
}