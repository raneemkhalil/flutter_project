import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget{
  final String title;
  final bool isActive;

  // final Map activeColors = const {
  //   'true': [Colors.white, Colors.blue],
  //   'false': [Colors.black, Color(0xFFEEEEEE)]
  // };
  
  const TextContainer({super.key, required this.title, required this.isActive});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: isActive? Colors.blue: const Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(30)
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isActive? Colors.white: Colors.black,
          fontSize: 14,
        ),
      ),
    );
  }
}