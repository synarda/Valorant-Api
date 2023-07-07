// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/widgets/blur.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({
    Key? key,
    required this.txt,
    required this.coordinate,
    required this.url,
    required this.sketch,
  }) : super(key: key);
  final String txt;
  final String coordinate;

  final String url;
  final String sketch;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
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
        Positioned.fill(
            child: Container(
          height: 200,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.black.withOpacity(0.9), Colors.transparent],
            ),
          ),
          child: Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: 130,
                width: 130,
                alignment: Alignment.center,
                color: Colors.white.withOpacity(0.6),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: sketch,
                  height: 200,
                  width: 200,
                  progressIndicatorBuilder: (context, url, downloadProgress) => const Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: CupertinoActivityIndicator(color: Colorss.mainColor01),
                  ),
                  errorWidget: (context, url, error) => Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        "lib/assets/noPhoto.png",
                      )),
                ),
              ),
            )
          ]),
        )),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                margin: const EdgeInsets.only(left: 130),
                child: Text(txt, style: Styles.bigTitleStyle),
              ),
              Container(
                width: 150,
                margin: const EdgeInsets.only(left: 130),
                child: Text(coordinate, style: Styles.smallTextStyle.copyWith(fontSize: 10)),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
