import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/models/maps_model.dart';

class MapsService {
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

  static Future<List<MapsModel>?> getMaps() async {
    try {
      Dio dio = await dioAuth();
      Response response = await dio.get("/v1/maps");

      if (response.statusCode == 200) {
        List<dynamic> list = response.data["data"];
        return list.map((e) => MapsModel.fromMap(e)).toList();
      }
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      debugPrint("getMaps  DioError: $e");
    } catch (e) {
      debugPrint("getMaps  Error: $e");
    }
    return null;
  }
}
