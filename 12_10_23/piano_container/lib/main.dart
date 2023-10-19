import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Piano App'),
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
  Color c1 = Colors.grey;
  Color c2 = Colors.black;
  Color c3 = Colors.grey;
  AudioPlayer player = AudioPlayer();
  String audioasset = 'bb.mp3';
    Future<void> _changeC1Colour() async {

    setState(() {
      c1=Colors.red;

    });
    await player.play(AssetSource(audioasset));

  }
  Future<void> _changeC2Colour() async {
    setState(() {
      c2=Colors.blue;


    });
    await player.play(AssetSource(audioasset));
  }
  Future<void> _changeC3Colour() async {
    setState(() {
      c3=Colors.green;

    });
    await player.play(AssetSource(audioasset));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: [
              GestureDetector(
                onTap: _changeC1Colour,
                  onLongPress: (){
                    c1=Colors.grey;
                    setState(() {

                    });
                  },
                child:Container(
                  color: c1,
                  width:100,
                  height:100
                )
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                  onTap: _changeC2Colour,
                  onLongPress: (){
                    c2=Colors.black;
                    setState(() {

                    });
                  },
                  child:Container(
                      color: c2,
                      width:100,
                      height:100
                  )
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                  onTap: _changeC3Colour,
                  onLongPress: (){
                    c3=Colors.grey;
                    setState(() {

                    });
                  },
                  child:Container(
                      color: c3,
                      width:100,
                      height:100
                  )
              ),
            ],
          )


        ],
      ),
    );
  }
}
