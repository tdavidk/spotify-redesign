import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify/res/colours.dart';
import 'package:spotify/ui/pages/splash_screen_page.dart';
import 'package:spotify/utils/material_color.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colours.green,
        primarySwatch: materialColor.createMaterialColor(Colours.green),
        useMaterial3: true,
        appBarTheme: Theme.of(context).appBarTheme.copyWith(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarBrightness: Brightness.light,
                statusBarIconBrightness: Brightness.dark,
              ),
            ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white,
          brightness: Brightness.light,
        ),
      ),
      home: const SplashScreenPage(),
    );
  }
}
