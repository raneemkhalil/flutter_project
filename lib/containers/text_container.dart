import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget{
  final String title;
  final String isActive;
  final void Function() onTap;

  final Map activeColors = const {
    'true': [Colors.white, Colors.blue],
    'false': [Colors.black, Color(0xFFEEEEEE)]
  };
  
  const TextContainer({super.key, required this.title, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: activeColors[isActive][1],
          borderRadius: BorderRadius.circular(30)
        ),
        child: Text(
          title,
          style: TextStyle(
            color: activeColors[isActive][0],
            fontSize: 14,
          ),
        ),
      )
    );
  }
}