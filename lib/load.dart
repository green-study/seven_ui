import 'package:flutter/material.dart';
import 'blinking_button.dart';

class BaseLayout extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/load.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: Center(
          child:  MyBlinkingButton()


        )
      ),

    );
  }
}

