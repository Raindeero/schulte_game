import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Game extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Schulte game"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("There should be a game here"),
          ],
        ),
      ),
    );
  }
}
