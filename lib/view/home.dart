import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';
import 'package:youtube_ecommerce_app/componenst/custom_appbar.dart';
import 'package:youtube_ecommerce_app/constant/constant.dart';
import 'package:youtube_ecommerce_app/riverpod/home_riverpod.dart';

final homeRiverpod = ChangeNotifierProvider((ref) => HomeRiverpod());

class Home extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(homeRiverpod);
    var read = ref.read(homeRiverpod);
    return Scaffold(
      appBar: CustomAppbar(),
      body: ListView(
        children: [
          SizedBox(
            height: 210,
            child: Stack(
              children: [
                PageView.builder(
                  controller: read.pageController,
                  itemCount: read.campaigns.length,
                  itemBuilder: (context, index) =>
                      Image.asset(watch.campaigns[index],),
                      onPageChanged: (newPageValue)=> read.setCampaignsIndex(newPageValue),
                ),
                Align(
                  alignment: Alignment.bottomCenter,//3 nokta resmin aşağısında ortada
                  child: Padding(
                    padding: 12.onlyBottomP,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        for(int i = 0; i < read.campaigns.length; i++)
                          Container(
                            width: 8,
                            height: 8,
                            margin: 3.allP,
                            decoration: BoxDecoration(
                              color: watch.campaignsCurrentIndex == i
                                  ? Constant.white
                                  : Constant.gray,
                              shape: BoxShape.circle,
                              
                            )
                          ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
