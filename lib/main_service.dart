import 'dart:convert';
import 'dart:io';

import 'package:http/io_client.dart';
import 'package:testappwork/task_model.dart';

class MainService {
  Future<List<Task>> getTasks() async {
    HttpClient httpClient = new HttpClient()
      ..badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
    IOClient ioClient = new IOClient(httpClient);

    var res =
        await ioClient.get(Uri.parse('https://myjson.dit.upm.es/api/bins/dby'));

    if (res.statusCode == 200) {
      var list = jsonDecode(res.body) as List;
      List<Task> schedule = list.map((i) => Task.fromMap(i)).toList();
      return schedule;
    }
    return jsonDecode(res.body);
  }
}
