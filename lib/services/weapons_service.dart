import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/models/weapons_model.dart';

class WeaponsService {
  static Future<Dio> dioAuth() async {
    BaseOptions options = BaseOptions(
      baseUrl: Const.apiUrl,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
      responseType: ResponseType.json,
    );

    return Dio(options);
  }

  static Future<List<WeaponsModel>?> getWeapons() async {
    try {
      Dio dio = await dioAuth();
      Response response = await dio.get("/v1/weapons");

      if (response.statusCode == 200) {
        List<dynamic> list = response.data["data"];
        return list.map((e) => WeaponsModel.fromMap(e)).toList();
      }
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      debugPrint("getWeapons  DioError: $e");
    } catch (e) {
      debugPrint("getWeapons  Error: $e");
    }
    return null;
  }
}
