import 'package:get/get.dart';
import 'package:valorant_api/models/sprays_model.dart';
import 'package:valorant_api/services/sprays_service.dart';

class SpraysController extends GetxController {
  final spraysList = <SpraysModel>[].obs;
  @override
  void onInit() {
    getAgents();
    super.onInit();
  }

  void getAgents() async {
    final result = await SpraysService.getSprays();
    if (result != null) {
      spraysList.value = result;
    }
  }
}
