import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:type_text/type_text.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/controllers/maps_controller.dart';
import 'package:valorant_api/widgets/map.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MapsController());
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 100,
        leading: IconButton(
            padding: const EdgeInsets.only(left: 32),
            icon: const Icon(Icons.arrow_back_ios_rounded, color: Colorss.textColor),
            onPressed: Get.back),
        title: TypeText(
          duration: const Duration(seconds: 1),
          "Maps",
          style: Styles.bigTitleStyle.copyWith(fontSize: 35, color: Colorss.mainColor03),
        ),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Obx(
          () => controller.mapsList.isEmpty
              ? const Center(child: CupertinoActivityIndicator(color: Colorss.mainColor01))
              : ListView(
                  children: controller.mapsList
                      .map((e) => MapWidget(
                          txt: e.displayName, url: e.listViewIcon, sketch: e.displayIcon, coordinate: e.coordinates))
                      .toList(),
                ),
        ),
      ),
    );
  }
}
