import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grock/grock.dart';
import 'package:youtube_ecommerce_app/assets.dart';
import 'package:youtube_ecommerce_app/constant/constant.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String appbarTitle; // AppBar başlığı için bir parametre

  const CustomAppbar({
    super.key,
    this.appbarTitle = 'iDrip', // Varsayılan başlık
  });

  // preferredSize getter'ı burada düzgün şekilde tanımlanıyor
  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appbarTitle, style: const TextStyle(color: Constant.black)),
      centerTitle: true, // 🔹 Başlığı ortal
      leading: Padding(
        padding: 12.allP, // 🔹 icon boyutu küçült
        child: SvgPicture.asset(Assets.icons.icDrawerSVG),
      ), // Drawer ikonu
      actions: [
        Padding(
        padding: 12.allP, // 🔹 icon boyutu küçült
        child: SvgPicture.asset(Assets.icons.icSearchSVG),
      ), // 🔹 Sağdaki ikon , search icon
      ],
      backgroundColor: Constant.darkWhite, // Arka plan rengi
    );
  }
}
