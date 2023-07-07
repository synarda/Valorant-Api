import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:valorant_api/const.dart';
import 'package:valorant_api/models/agents_model.dart';

class AgentService {
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

  static Future<List<AgentModels>?> getAgents() async {
    try {
      Dio dio = await dioAuth();
      Response response = await dio.get("/v1/agents");

      if (response.statusCode == 200) {
        List<dynamic> list = response.data["data"];
        return list.map((e) => AgentModels.fromMap(e)).toList();
      }
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      debugPrint("getAgents  DioError: $e");
    } catch (e) {
      debugPrint("getAgents  Error: $e");
    }
    return null;
  }
}
