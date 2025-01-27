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
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            SoundButton(
              song: 'guitar.mp3',
              backgroundColor: Colors.yellow,
              icon: FontAwesomeIcons.music,
            ),
            SoundButton(
              song: 'total_relax.mp3',
              backgroundColor: Colors.green,
              icon: FontAwesomeIcons.leaf,
            ),
            SoundButton(
              song: 'fart.mp3',
              backgroundColor: Colors.brown,
              icon: FontAwesomeIcons.poo,
            ),
            SoundButton(
              song: 'rain.mp3',
              backgroundColor: Colors.grey,
              icon: FontAwesomeIcons.cloudRain,
            ),
            SoundButton(
              song: 'claxon.mp3',
              backgroundColor: Colors.red,
              icon: FontAwesomeIcons.car,
            ),
            SoundButton(
              song: 'fire.mp3',
              backgroundColor: Colors.orange,
              icon: FontAwesomeIcons.fire,
            ),
            SoundButton(
              song: 'wind.mp3',
              backgroundColor: Colors.cyanAccent,
              icon: FontAwesomeIcons.wind,
            ),
            SoundButton(
              song: 'waves.mp3',
              backgroundColor: Colors.blue,
              icon: FontAwesomeIcons.water,
            ),
            SoundButton(
              song: 'frog.mp3',
              backgroundColor: Colors.greenAccent,
              icon: FontAwesomeIcons.frog,
            ),
            SoundButton(
                song: 'crickets.mp3',
                backgroundColor: Colors.pinkAccent,
                icon: FontAwesomeIcons.bug),
            SoundButton(
                song: 'cow.mp3',
                backgroundColor: Colors.purpleAccent,
                icon: FontAwesomeIcons.cow),
            SoundButton(
                song: 'clock.mp3',
                backgroundColor: Colors.yellowAccent,
                icon: FontAwesomeIcons.clock),
          ],
        ),
      ),
    );
  }
}
