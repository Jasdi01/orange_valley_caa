
import 'package:orange_valley_caa/models/video.dart';
import 'package:http/http.dart' as http;

Future<List<Video>> getVideosFromApi() async {
  final url = Uri.parse('https://orangevalleycaa.org/api/videos');

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var json = response.body;
    return videoFromJson(json); 
  } else {
    return [];
  }
}