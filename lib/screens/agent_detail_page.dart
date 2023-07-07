// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:type_text/type_text.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/models/agents_model.dart';
import 'package:valorant_api/screens/youtube_alert.dart';
import 'package:valorant_api/widgets/agent_detail.dart';
import 'package:valorant_api/widgets/blur.dart';

class AgentDetailPage extends StatelessWidget {
  const AgentDetailPage({
    Key? key,
    required this.agent,
    required this.index,
  }) : super(key: key);
  final AgentModels agent;
  final int index;
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
          agent.displayName,
          style: Styles.bigTitleStyle.copyWith(fontSize: 35, color: Colorss.mainColor03),
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 300,
              width: 200,
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: agent.bacground,
                height: 200,
                width: 200,
                progressIndicatorBuilder: (context, url, downloadProgress) => const Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: CupertinoActivityIndicator(color: Colorss.mainColor02),
                ),
                errorWidget: (context, url, error) =>
                    Align(alignment: Alignment.centerLeft, child: Image.asset("lib/assets/noPhoto.png")),
              ),
            ),
          ).animate().move(begin: const Offset(500, 0), delay: 0.ms, duration: 1000.ms, curve: Curves.easeOutCirc),
          const BlurWidget(blur: 0),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 300,
              width: 200,
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: agent.bustPortrait,
                height: 200,
                width: 200,
                progressIndicatorBuilder: (context, url, downloadProgress) => const Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: CupertinoActivityIndicator(color: Colorss.mainColor02),
                ),
                errorWidget: (context, url, error) =>
                    Align(alignment: Alignment.centerLeft, child: Image.asset("lib/assets/noPhoto.png")),
              ),
            ),
          ).animate().move(begin: const Offset(-500, 0), delay: 0.ms, duration: 1000.ms, curve: Curves.easeOutCirc),
          Align(alignment: Alignment.bottomCenter, child: AgentDetailWidget(agent: agent)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.transparent,
          onPressed: () => Get.dialog(YoutubeAlert(name: agent.displayName, url: Const.youtubeUrlList[index]["url"]!)),
          child: Image.asset("lib/assets/youtube_icon.png").animate(onComplete: (controller) {
            controller.forward(from: 0);
          }).shimmer(color: Colors.white, duration: 1500.ms)),
    );
  }
}
