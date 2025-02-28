import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String apiEndPoint = 'http://worldtimeapi.org/api/timezone/';
  String location = '';
  String url = '';
  String flag = '';
  String time = '';

  WorldTime({required this.location, required this.url, required this.flag});

  Future<void> getTime() async {
    Response response = await get(Uri.parse('$apiEndPoint$url'));
    Map data = jsonDecode(response.body);
    String dateTime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offset)));

    time = now.toString();
  }
}