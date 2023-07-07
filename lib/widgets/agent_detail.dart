// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/models/agents_model.dart';

class AgentDetailWidget extends StatelessWidget {
  const AgentDetailWidget({
    Key? key,
    required this.agent,
  }) : super(key: key);
  final AgentModels agent;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: Get.width,
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), border: Border.all(color: Colorss.mainColor03, width: 0.2)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(agent.description.toLowerCase(),
              style: Styles.smallTextStyle.copyWith(color: Colorss.textColor.withOpacity(0.6), fontSize: 12)),
        ),
      ]),
    );
  }
}
