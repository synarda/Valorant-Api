import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:type_text/type_text.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/controllers/sprays_controller.dart';
import 'package:valorant_api/widgets/spray.dart';

class SpraysPage extends StatelessWidget {
  const SpraysPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SpraysController());
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
          "Sprays",
          style: Styles.bigTitleStyle.copyWith(fontSize: 35, color: Colorss.mainColor03),
        ),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Obx(() => controller.spraysList.isEmpty
            ? const Center(child: CupertinoActivityIndicator(color: Colorss.mainColor01))
            : GridView.count(
                crossAxisCount: 2,
                children: controller.spraysList.map((e) => SprayWidget(spray: e)).toList(),
              )),
      ),
    );
  }
}
