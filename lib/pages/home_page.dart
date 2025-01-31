import 'package:flutter/material.dart';
import 'package:orange_valley_caa/models/video.dart';
import 'package:orange_valley_caa/services/video_api.dart';
import 'package:orange_valley_caa/utils/constants.dart';
import 'package:orange_valley_caa/widgets/videos_grid.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orange Valley CAA', 
          style: TextStyle(color: const Color.fromARGB(255, 251, 252, 253), 
          fontSize: 24, 
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoMono'),
          ),
        backgroundColor: Color.fromARGB(201, 3, 3, 3),
      ),

      body: Container(
        color: backgroundColor,
        child: FutureBuilder(
          future: getVideosFromApi(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if(snapshot.hasError) {
              return Center(child: Text('Une erreur est survenue'));
            } else {
              final List<Video> videos = snapshot.data as List<Video>;
              return VideosGrid(videos: videos);
            }
          },
        ),
      ),
    );
  }
}
