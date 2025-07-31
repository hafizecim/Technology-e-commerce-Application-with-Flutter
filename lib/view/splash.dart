import 'package:flutter/material.dart';
import 'package:grock/grock.dart';
import 'package:youtube_ecommerce_app/assets.dart';
import 'package:youtube_ecommerce_app/constant/constant.dart';
import 'package:youtube_ecommerce_app/view/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});


  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    
    Future.delayed(const Duration(seconds: 2),() {
      // 2 saniye sonra Home sayfasına yönlendirir
      // Grock.toRemove(Home()); // Bu satır Grock ile yönlendirme yap
      Grock.toRemove(Home()); // 2 saniye sonra Home sayfasına yönlendirir
     
    });
    super.initState();
  } 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Constant.darkWhite,
      body: Center(
        child: Image.asset(Assets.images.imSplashPNG),
      ),
    );
  }
}