// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:valorant_api/models/weapon_skins_model.dart';

class WeaponsModel {
  final String displayName;
  final String category;
  final String displayIcon;
  final List<WeaponSkinsModel> skins;

  WeaponsModel({
    required this.displayName,
    required this.category,
    required this.displayIcon,
    required this.skins,
  });

  factory WeaponsModel.fromMap(Map<String, dynamic> map) {
    return WeaponsModel(
      displayName: map['displayName'] ?? "",
      category: map['category'] ?? "",
      displayIcon: map['displayIcon'] ?? "",
      skins: List<WeaponSkinsModel>.from(
        (map['skins'] as List<dynamic>).map<WeaponSkinsModel>(
          (x) => WeaponSkinsModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  factory WeaponsModel.fromJson(String source) => WeaponsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'WeaponsModel(displayName: $displayName, category: $category, displayIcon: $displayIcon, skins: $skins, )';
  }
}
