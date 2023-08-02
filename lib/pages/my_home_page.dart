import 'package:flutter/material.dart';
import 'all_news_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 300,),
            const Image(image: AssetImage('assets/images/app/news.png'), width: 300,),
            FloatingActionButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NewsPage()));
              }, 
            child: const Icon(Icons.arrow_forward),),
          ],
        ),
      ) 
    );
  }
}