import 'package:flutter/material.dart';
import 'package:youtube_ecommerce_app/assets.dart';

class HomeRiverpod extends ChangeNotifier {
   List<String> campaigns = [
    Assets.images.imCampaignsPNG,
    Assets.images.imCampaignsPNG,
    Assets.images.imCampaignsPNG,
  ];
  
 int campaignsCurrentIndex = 0;

 PageController pageController = PageController(initialPage: 0);

 void setCampaignsIndex(int newPageValue) {
    campaignsCurrentIndex = newPageValue;
    notifyListeners();
  }
}