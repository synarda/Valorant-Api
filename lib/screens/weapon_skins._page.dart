// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:type_text/type_text.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/models/weapons_model.dart';
import 'package:valorant_api/widgets/weapon_skins.dart';

class WeaponSkinsPage extends StatelessWidget {
  const WeaponSkinsPage({
    Key? key,
    required this.weapon,
  }) : super(key: key);
  final WeaponsModel weapon;
  @override
  Widget build(BuildContext context) {
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
          "${weapon.displayName} Skins",
          style: Styles.bigTitleStyle.copyWith(fontSize: 35, color: Colorss.mainColor03),
        ),
      ),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: ListView(
          children: weapon.skins.map((e) => WeaponSkinsWdiget(weapon: e)).toList(),
        ),
      ),
    );
  }
}
