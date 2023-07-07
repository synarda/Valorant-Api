import 'package:get/get.dart';
import 'package:valorant_api/models/maps_model.dart';
import 'package:valorant_api/services/maps_service.dart';

class MapsController extends GetxController {
  final mapsList = <MapsModel>[].obs;
  @override
  void onInit() {
    getMaps();
    super.onInit();
  }

  void getMaps() async {
    final result = await MapsService.getMaps();
    if (result != null) {
      mapsList.value = result;
    }
  }
}
