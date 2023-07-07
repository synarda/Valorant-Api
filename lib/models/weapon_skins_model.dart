// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class WeaponSkinsModel {
  final String displayName;
  final String displayIcon;
  WeaponSkinsModel({
    required this.displayName,
    required this.displayIcon,
  });

  factory WeaponSkinsModel.fromMap(Map<String, dynamic> map) {
    return WeaponSkinsModel(
      displayName: map['displayName'] ?? "",
      displayIcon: map['displayIcon'] ?? "",
    );
  }

  factory WeaponSkinsModel.fromJson(String source) =>
      WeaponSkinsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'WeaponSkinsModel(displayName: $displayName, displayIcon: $displayIcon)';
}
