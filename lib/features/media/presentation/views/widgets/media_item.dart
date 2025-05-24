import 'package:flutter/material.dart';
import 'package:safty_children/core/themeing/app_styles.dart';
import 'package:video_player/video_player.dart';

class MediaItem extends StatefulWidget {
  final String title;
  final String vidPath;
  const MediaItem({super.key, required this.title, required this.vidPath});

  @override
  State<MediaItem> createState() => _MediaItemState();
}

class _MediaItemState extends State<MediaItem> {
  VideoPlayerController? vidController;
  bool isPlaying = false;
  bool showVid = false;

  playVideo() {
    vidController?.dispose();
    vidController = VideoPlayerController.asset(widget.vidPath)
      ..initialize().then((_) {
        setState(() {
          isPlaying = true;
          showVid = true;
          vidController!.play();
        });
      });
  }

  playOrPause() {
    setState(() {
      if (vidController!.value.isPlaying) {
        vidController!.pause();
      } else {
        vidController!.play();
      }
    });
  }

  @override
  void dispose() {
    vidController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(widget.title, style: AppStyles.headStyle),
      children: [
        !showVid
            ? TextButton(
              onPressed: () {
                playVideo();
              },
              child: Text(
                "عرض الفيديو",
                style: AppStyles.descriptionStyle.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            )
            : Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  playOrPause();
                },
                child: AspectRatio(
                  aspectRatio: vidController!.value.aspectRatio,
                  child: VideoPlayer(vidController!),
                ),
              ),
            ),
      ],
    );
  }
}
