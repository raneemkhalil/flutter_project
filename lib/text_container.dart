import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget{
  final String title;
  const TextContainer({super.key, required this.title});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      margin: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Text(
        title,
        style: const TextStyle(
          backgroundColor: Colors.blue,
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}