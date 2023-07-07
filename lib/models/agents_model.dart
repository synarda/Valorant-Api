// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AgentModels {
  final String displayName;
  final String description;
  final String developerName;
  final String displayIcon;
  final String bustPortrait;
  final String killFeedPortrait;
  final String bacground;
  final List<String> backgroundGradientColors;

  AgentModels({
    required this.displayName,
    required this.description,
    required this.developerName,
    required this.displayIcon,
    required this.bustPortrait,
    required this.killFeedPortrait,
    required this.bacground,
    required this.backgroundGradientColors,
  });

  factory AgentModels.fromMap(Map<String, dynamic> map) {
    return AgentModels(
      displayName: map['displayName'] ?? "",
      description: map['description'] ?? "",
      developerName: map['developerName'] ?? "",
      displayIcon: map['displayIcon'] ?? "",
      bustPortrait: map['bustPortrait'] ?? "",
      killFeedPortrait: map['killfeedPortrait'] ?? "",
      bacground: map['background'] ?? "",
      backgroundGradientColors: List<String>.from(
        (map['backgroundGradientColors'] as List<dynamic>),
      ),
    );
  }

  factory AgentModels.fromJson(String source) => AgentModels.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AgentModels(displayName: $displayName, description: $description, developerName: $developerName, displayIcon: $displayIcon, bustPortrait: $bustPortrait, killFeedPortrait: $killFeedPortrait, bacground: $bacground)';
  }
}
