/*
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/models/radio_model.dart';
import 'package:islami_app/modules/radio/radio_service.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  final player = AudioPlayer();

  var future;
  @override
  void initState() {
    future = getRadio();
  }

  int index = 0;
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      child: FutureBuilder<RadioModel>(
        future: future,
        builder: (context, snapshot) {
          var data = snapshot.data?.radios ?? [];
          if (snapshot.hasData){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                Image.asset(
                  'assets/images/radio_image.png',
                  width: 250,
                ),
                Spacer(),
                Text(
                  data[index].name ?? '',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (index > 0) {
                          index--;
                          player.stop();
                          player.play(
                            UrlSource(data[index].url ?? ''),
                          );
                          setState(() {});
                        }
                      },
                      icon: Icon(
                        Icons.skip_previous,
                        size: 35,
                        color: theme.canvasColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        player.stop();
                        if (!isPlaying) {
                          player.play(
                            UrlSource(data[index].url ?? ''),
                          );
                        }

                        isPlaying = !isPlaying;
                        setState(() {});
                      },
                      icon: Icon(
                        isPlaying ? Icons.stop : Icons.play_arrow,
                        size: 35,
                        color: theme.canvasColor,
                      ),
                    ),
                    */
/*IconButton(
                    onPressed: () {
                      player.stop();
                      isPlaying = false;
                      setState(() {

                      });
                    },
                    icon: Icon(
                      Icons.stop,
                      size: 35,
                      color: theme.canvasColor,
                    ),
                  ),*/ /*

                    IconButton(
                      onPressed: () {
                        if (index < data.length) {
                          index++;
                          player.stop();
                          player.play(
                            UrlSource(data[index].url ?? ''),
                          );
                          setState(() {});
                        }
                      },
                      icon: Icon(
                        Icons.skip_next,
                        size: 35,
                        color: theme.canvasColor,
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            );
          } else if(snapshot.hasError){
            return Center(
              child: Text('oops there was an error, try later'),
            );
          }
            else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
*/
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/models/radio_model.dart';
import 'package:islami_app/modules/radio/radio_service.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  final player = AudioPlayer();
  final assetsAudioPlayer = AssetsAudioPlayer();

  var future;
  @override
  void initState() {
    super.initState();
    future = getRadio();
  }

  int index = 0;
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      child: FutureBuilder<RadioModel>(
        future: future,
        builder: (context, snapshot) {
          var data = snapshot.data?.radios ?? [];
          if (snapshot.hasData) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(
                  'assets/images/radio_image.png',
                  width: 250,
                ),
                const Spacer(),
                Text(
                  data[index].name ?? '',
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (index > 0) {
                          index--;
                          player.stop();
                          player.play(
                            UrlSource(data[index].url ?? ''),
                          );
                          setState(() {});
                        }
                      },
                      icon: Icon(
                        Icons.skip_previous,
                        size: 35,
                        color: theme.canvasColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        //player.stop();
                        assetsAudioPlayer.stop();
                        if (!isPlaying) {
                          await assetsAudioPlayer.open(
                            Audio.network(data[index].url ?? ''),
                            showNotification: true,
                            notificationSettings: const NotificationSettings(
                              seekBarEnabled: true,
                            ),
                          );
                          // player.play(UrlSource(data[index].url ?? ''));
                        }

                        isPlaying = !isPlaying;
                        setState(() {});
                      },
                      icon: Icon(
                        isPlaying ? Icons.stop : Icons.play_arrow,
                        size: 35,
                        color: theme.canvasColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        if (index < data.length) {
                          index++;
                          player.stop();
                          player.play(
                            UrlSource(data[index].url ?? ''),
                          );
                          setState(() {});
                        }
                      },
                      icon: Icon(
                        Icons.skip_next,
                        size: 35,
                        color: theme.canvasColor,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('oops there was an error, try later'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
