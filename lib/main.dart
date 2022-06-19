import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'game.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

int _count = 1;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Schulte game",
      home: Scaffold(
        appBar: AppBar(
            title: Text("Schulte game"),
            centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center, //center horizontal
                crossAxisAlignment: CrossAxisAlignment.center, //center vertical
                children: [
                  ElevatedButton.icon(
                    icon: Icon(Icons.info),
                    label: Text("What is Schulte Tables?"),
                    onPressed: (){
                      Get.defaultDialog(
                        title: "Schulte Table",
                        middleText:
                        "It's a grid with randomly distributed numbers "
                            "used for development of speed reading, "
                            "peripheral vision, attention and visual perception.",
                      );
                    },
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  ElevatedButton.icon(
                    icon: Icon(Icons.videogame_asset),
                    label: Text("Start"),
                    onPressed: (){
                      Get.to(Game());
                    },
                  ),
                ],
              ),
            ]
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(_count%2==1){
              Get.changeTheme(ThemeData.dark());
              _count++;
            }else{
              Get.changeTheme(ThemeData.light());
              _count++;
            }
          },
          child: Icon(Icons.wb_incandescent)
        ),
      ),
    );
  }
}
