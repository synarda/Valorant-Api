import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AgentDetailController extends GetxController {
  AgentDetailController(this.url);
  final String url;
  late YoutubePlayerController controllerYoutube;
  @override
  void onInit() {
    controllerYoutube = YoutubePlayerController(initialVideoId: YoutubePlayer.convertUrlToId(url)!);
    super.onInit();
  }
}
