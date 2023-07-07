// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/models/agents_model.dart';
import 'package:valorant_api/screens/agent_detail_page.dart';

class AgentCardWidget extends StatelessWidget {
  const AgentCardWidget({
    Key? key,
    required this.agent,
    required this.index,
  }) : super(key: key);
  final AgentModels agent;
  final int index;
  @override
  Widget build(BuildContext context) {
    return agent.bustPortrait.isEmpty
        ? const SizedBox()
        : GestureDetector(
            onTap: () => Get.to(AgentDetailPage(agent: agent, index: index)),
            child: SizedBox(
              height: 180,
              width: Get.width - 32,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 120,
                      width: Get.width - 32,
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          end: Alignment.centerLeft,
                          begin: Alignment.centerRight,
                          colors: [
                            Colorss.mainColor02.withOpacity(0.5),
                            Colorss.mainColor03.withOpacity(0.1),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Row(
                            children: [
                              const Spacer(),
                              SizedBox(
                                width: 130,
                                child: Text(
                                  agent.displayName,
                                  style: Styles.bigTitleStyle.copyWith(fontSize: 21, color: Colorss.textColor),
                                ),
                              ),
                              const SizedBox(width: 32),
                              const Icon(Icons.arrow_forward_ios_outlined, color: Colorss.textColor, size: 20),
                              const SizedBox(width: 16)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
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
                ],
              ),
            ).animate().move(
                begin: Offset(index % 2 == 0 ? 500 : -500, 0),
                delay: 0.ms,
                duration: 1000.ms,
                curve: Curves.easeOutCirc),
          );
  }
}
