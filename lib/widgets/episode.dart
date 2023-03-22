import 'package:flutter/material.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Episode extends StatelessWidget {
  final String webtoonId;
  const Episode({super.key, required this.episode, required this.webtoonId});

  final WebtoonEpisodeModel episode;

  onButtonTab() async {
    await launchUrlString(
        "https://comic.naver.com/webtoon/detail?titleId=$webtoonId&no=${episode.id}");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTab,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.green.shade400, width: 1.5),
          boxShadow: [
            BoxShadow(
              offset: const Offset(5, 5),
              blurRadius: 5.0,
              color: Colors.black.withOpacity(0.1),
            )
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                episode.title,
                style: TextStyle(
                  color: Colors.green.shade300,
                  fontSize: 15,
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.green.shade300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
