// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_api/const.dart';

import '../widgets/youtube.dart';

class YoutubeAlert extends StatelessWidget {
  const YoutubeAlert({
    Key? key,
    required this.name,
    required this.url,
  }) : super(key: key);

  final String name;
  final String url;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.black,
      content: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), border: Border.all(width: 0.1, color: Colorss.textColor)),
        child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Stack(
            children: [
              IconButton(icon: const Icon(Icons.arrow_back_ios_rounded, color: Colorss.textColor), onPressed: Get.back),
              Center(
                child: Text(
                  name,
                  style: Styles.bigTitleStyle,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(height: 200, width: Get.width, color: Colors.blue, child: YoutubeVideoWidget(url: url))
        ]),
      ),
    );
  }
}
