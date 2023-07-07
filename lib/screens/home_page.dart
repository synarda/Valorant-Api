import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:type_text/type_text.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/screens/agents_page.dart';
import 'package:valorant_api/screens/maps_page.dart';
import 'package:valorant_api/screens/sprays.page.dart';
import 'package:valorant_api/screens/weapons_page.dart';
import 'package:valorant_api/widgets/select.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 100,
        title: TypeText(
          duration: const Duration(seconds: 1),
          "VALORANT",
          style: Styles.bigTitleStyle.copyWith(fontSize: 35, color: Colorss.mainColor03),
        ),
      ),
      body: ListView(
        children: [
          SelectWidget(
              txt: "Agents",
              url:
                  "https://static.wikia.nocookie.net/valorant/images/3/3a/Closed_Beta_Promo.jpg/revision/latest/scale-to-width-down/320?cb=20200409115659",
              function: () => Get.to(const AgentsPage()),
              delay: 2400),
          SelectWidget(
              txt: "Weapons",
              url: "https://mir-s3-cdn-cf.behance.net/project_modules/fs/36feef96777033.5eb5caed75c90.png",
              function: () => Get.to(const WeaponsPage()),
              delay: 2700),
          SelectWidget(
              txt: "Maps",
              url:
                  "https://images.prismic.io/rivalryglhf/3965b309-0510-4285-8aab-596753ed6ec9_Valorant-Maps.webp?auto=compress,format&rect=0,31,1024,512&w=720&h=360",
              function: () => Get.to(const MapsPage()),
              delay: 3000),
          SelectWidget(
              txt: "Sprays",
              url: "https://firstsportz.com/wp-content/uploads/2023/04/FuVjqFwWYAgqt29-1140x815.jpg",
              function: () => Get.to(const SpraysPage()),
              delay: 3000),
        ],
      ),
    );
  }
}
