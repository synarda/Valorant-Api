// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/models/weapon_skins_model.dart';

class WeaponSkinsWdiget extends StatelessWidget {
  const WeaponSkinsWdiget({
    Key? key,
    required this.weapon,
  }) : super(key: key);
  final WeaponSkinsModel weapon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: Get.width,
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), border: Border.all(color: Colorss.textColor.withOpacity(0.5))),
      child: Stack(children: [
        Positioned.fill(
          child: CachedNetworkImage(
            fit: BoxFit.contain,
            imageUrl: weapon.displayIcon,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                const CupertinoActivityIndicator(color: Colorss.mainColor01),
            errorWidget: (context, url, error) =>
                Align(alignment: Alignment.center, child: Image.asset("lib/assets/noPhoto.png")),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Stack(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: 40,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                ),
                child: Center(
                    child: Text(weapon.displayName.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        style: Styles.mediumTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.bold))),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
