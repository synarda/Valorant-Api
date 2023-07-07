import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/models/sprays_model.dart';

class SpraysService {
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

  static Future<List<SpraysModel>?> getSprays() async {
    try {
      Dio dio = await dioAuth();
      Response response = await dio.get("/v1/sprays");

      if (response.statusCode == 200) {
        List<dynamic> list = response.data["data"];
        return list.map((e) => SpraysModel.fromMap(e)).toList();
      }
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      debugPrint("getSprays  DioError: $e");
    } catch (e) {
      debugPrint("getSprays  Error: $e");
    }
    return null;
  }
}
