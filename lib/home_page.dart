import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sound_buttons/sound_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          children: [
            SoundButton(
              song: 'guitar.mp3',
              backgroundColor: Colors.yellow,
              icon: FaIcon(FontAwesomeIcons.music),
            ),
            SoundButton(
              song: 'total_relax.mp3',
              backgroundColor: Colors.deepPurpleAccent,
              icon: FaIcon(FontAwesomeIcons.chessKnight),
            ),
            SoundButton(
              song: 'fart.mp3',
              backgroundColor: Colors.cyan,
              icon: FaIcon(FontAwesomeIcons.personRunning),
            ),
          ],
        ),
      ),
    );
  }
}
