// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/widgets/blur.dart';

class SelectWidget extends StatelessWidget {
  const SelectWidget({
    Key? key,
    required this.txt,
    required this.url,
    required this.function,
    required this.delay,
  }) : super(key: key);
  final String txt;
  final String url;
  final Function() function;
  final int delay;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => function(),
      child: Container(
        width: Get.width,
        height: 200,
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(20)),
        child: Stack(children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: url,
                height: 200,
                width: 200,
                progressIndicatorBuilder: (context, url, downloadProgress) => const Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: CupertinoActivityIndicator(color: Colorss.mainColor01),
                ),
                errorWidget: (context, url, error) =>
                    Align(alignment: Alignment.centerLeft, child: Image.asset("lib/assets/noPhoto.png")),
              ),
            ),
          ),
          const BlurWidget(blur: 0.5),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const SizedBox(width: 16),
                  Text(
                    txt,
                    style: Styles.bigTitleStyle.copyWith(
                      fontSize: 30,
                      shadows: const [
                        Shadow(
                          offset: Offset(1, 1),
                          blurRadius: 4.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    ),
                  ).animate(onComplete: (controller) {
                    controller.forward(from: 0);
                  }).shimmer(delay: delay.ms, duration: 1500.ms),
                ]),
              ))
        ]),
      ),
    );
  }
}
