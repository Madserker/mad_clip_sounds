import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: <Widget>[
          createButton("ha_sio_kov.mp3", Color.fromARGB(255, 189, 61, 61)),
          createButton("ha_entrao.mp3", Color.fromARGB(255, 226, 114, 39)),
          createButton(
              "el_ultimo_que_cierre.mp3", Color.fromARGB(255, 189, 61, 61)),
          createButton("apago_apago.mp3", Color.fromARGB(255, 68, 216, 68)),
          createButton(
              "tengo_el_champan.mp3", Color.fromARGB(255, 68, 216, 68)),
          createButton(
              "the_wheel_of_fortune.mp3", Color.fromARGB(255, 226, 114, 39)),
          createButton(
              "the_high_priest.mp3", Color.fromARGB(255, 226, 114, 39)),
          createButton("no_que_va.mp3", Color.fromARGB(255, 106, 185, 230)),
          createButton(
              "litus_esta_aqui.mp3", Color.fromARGB(255, 106, 185, 230)),
          createButton("em_mata.mp3", Color.fromARGB(255, 106, 185, 230)),
          createButton("estas_morint.mp3", Color.fromARGB(255, 230, 106, 209)),
          createButton("miralo.mp3", Color.fromARGB(255, 189, 61, 61)),
          createButton("ara_si.mp3", Color.fromARGB(255, 189, 61, 61)),
        ],
      ),
    );
  }

  Widget createButton(String name, Color color) {
    return TextButton(
        onPressed: () {
          AssetsAudioPlayer.newPlayer().open(Audio("assets/audios/" + name));
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: const BorderSide(width: 0)))),
        child: Text(
          name.replaceAll("_", " ").replaceAll(".mp3", ""),
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
