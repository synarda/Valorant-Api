// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MapsModel {
  final String displayName;
  final String coordinates;
  final String listViewIcon;
  final String displayIcon;
  MapsModel({
    required this.displayName,
    required this.coordinates,
    required this.listViewIcon,
    required this.displayIcon,
  });

  factory MapsModel.fromMap(Map<String, dynamic> map) {
    return MapsModel(
      displayName: map['displayName'] ?? "",
      coordinates: map['coordinates'] ?? "",
      listViewIcon: map['listViewIcon'] ?? "",
      displayIcon: map['displayIcon'] ?? "",
    );
  }

  factory MapsModel.fromJson(String source) => MapsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MapsModel(displayName: $displayName, coordinates: $coordinates, listViewIcon: $listViewIcon, displayIcon: $displayIcon)';
  }
}
