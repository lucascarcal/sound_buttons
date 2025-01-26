import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SoundButton extends StatefulWidget {
  final String song;
  final Color? backgroundColor;
  final IconData? icon;
  const SoundButton(
      {super.key, required this.song, this.backgroundColor, this.icon});

  @override
  State<SoundButton> createState() => _SoundButtonState();
}

class _SoundButtonState extends State<SoundButton> {
  /// Reproductor de audio.
  final player = AudioPlayer();

  /// Indica si el sonido está reproduciendo.
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    player.onPlayerComplete.listen((_) {
      /// El audio ha terminado de reproducirse.
      changeState(false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: playSound,
      backgroundColor: widget.backgroundColor,
      child: isPlaying ? FaIcon(FontAwesomeIcons.pause) : FaIcon(widget.icon),
    );
  }

  /// Reproduce o para de reproducir el sonido.
  void playSound() {
    if (isPlaying) {
      player.stop();
      changeState(false);
    } else {
      player.play(AssetSource(widget.song));
      changeState(true);
    }
  }

  /// Cambia el estado del reproductor.
  void changeState(bool state) {
    setState(() {
      isPlaying = state;
    });
  }
}
