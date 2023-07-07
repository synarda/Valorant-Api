import 'package:get/get.dart';
import 'package:valorant_api/models/weapons_model.dart';
import 'package:valorant_api/services/weapons_service.dart';

class WeaponsController extends GetxController {
  final weaponsList = <WeaponsModel>[].obs;
  @override
  void onInit() {
    getWEapons();
    super.onInit();
  }

  void getWEapons() async {
    final result = await WeaponsService.getWeapons();
    if (result != null) {
      weaponsList.value = result;
    }
  }
}
