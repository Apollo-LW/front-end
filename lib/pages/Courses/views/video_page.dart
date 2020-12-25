import 'package:Apollo/pages/Courses/components/resources_component.dart';
import 'package:Apollo/pages/Courses/components/video_player.dart';
import 'package:Apollo/pages/Courses/models/video.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatelessWidget {
  Video video;
  VideoPage({@required this.video});
  launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(video.title),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.width / 1.78,
              width: MediaQuery.of(context).size.width,
              child: ChewieListItem(
                videoPlayerController: VideoPlayerController.network(
                  video.url,
                ),
                looping: false,
                aspectRatio: (MediaQuery.of(context).size.width / 1.78) /
                    MediaQuery.of(context).size.width,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: video.caption != null ? Text(video.caption) : SizedBox(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: ResourcesComponent(
                    resources: video.resources,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
