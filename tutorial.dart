import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class CustomButton extends StatelessWidget {

  final String buttonText;
  final VoidCallback onPressed;
  
  const CustomButton({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),

    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("User defined "),
        ),
        body: Center(
          child: CustomButton(
            buttonText: "Custom Press Me",
             onPressed:() {
          print("Custom button pressed");
        },
        ),
        ),
      ),
    );
  }
  }
