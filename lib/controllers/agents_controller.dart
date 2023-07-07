import 'package:get/get.dart';
import 'package:valorant_api/models/agents_model.dart';
import 'package:valorant_api/services/agents_service.dart';

class AgentsController extends GetxController {
  final agentsList = <AgentModels>[].obs;
  @override
  void onInit() {
    getAgents();
    super.onInit();
  }

  void getAgents() async {
    final result = await AgentService.getAgents();
    if (result != null) {
      agentsList.value = result;
    }
  }
}
