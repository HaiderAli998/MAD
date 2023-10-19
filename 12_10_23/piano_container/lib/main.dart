import 'package:audioplayers/audioplayers.dart';
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
  final player = AudioPlayer();
  void initState(){

  }
  void _changeC1Colour() {

    setState(() {
      player.play(AssetSource('audio/bb.mp3'));
      c1=Colors.red;

    });
  }
  void _changeC2Colour(){
    player.play(AssetSource('audio/bb.mp3'));
    setState(() {
      c2=Colors.blue;


    });
  }
  void _changeC3Colour(){
    player.play(AssetSource('audio/bb.mp3'));
    setState(() {
      c3=Colors.green;

    });
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
