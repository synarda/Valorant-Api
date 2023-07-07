// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_api/controllers/agent_detail_controller.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoWidget extends StatelessWidget {
  const YoutubeVideoWidget({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AgentDetailController(url));
    return YoutubePlayerBuilder(
        player: YoutubePlayer(controller: controller.controllerYoutube),
        builder: (context, player) => SizedBox(
              child: player,
            ));
  }
}
