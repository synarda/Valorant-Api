// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SpraysModel {
  final String displayName;
  final String displayIcon;
  SpraysModel({
    required this.displayName,
    required this.displayIcon,
  });

  factory SpraysModel.fromMap(Map<String, dynamic> map) {
    return SpraysModel(
      displayName: map['displayName'] ?? "",
      displayIcon: map['displayIcon'] ?? "",
    );
  }

  factory SpraysModel.fromJson(String source) => SpraysModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SpraysModel(displayName: $displayName, displayIcon: $displayIcon)';
}
