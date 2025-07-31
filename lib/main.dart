import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:youtube_ecommerce_app/constant/constant.dart';
import 'package:youtube_ecommerce_app/view/splash.dart';

void main() => runApp( ProviderScope (child:  MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube E-commecne App',
      debugShowCheckedModeBanner: false,
      navigatorKey: Grock.navigationKey,  // sayfa yönlendirmeleri için kullanılır
      scaffoldMessengerKey: Grock.scaffoldMessengerKey, // snackbar ve dialoglar için kullanılır
      theme: ThemeData(
      scaffoldBackgroundColor: Constant.white, // Temel arka plan rengi
      ),
      home: Splash(),
    );
  }
}
