import 'package:flutter/material.dart';
import 'package:myapp/text_container.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(top: 10, left: 16),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 18,),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Discover',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40, 
              ),
            ),
            const Text(
              'News from all around the world',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14, 
              ),
            ),
            const SizedBox(height: 12,),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30)
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),
                  Spacer(),
                  Image(
                    image: AssetImage('assets/images/7168081.png'),
                    width: 30,
                    color: Colors.black54
                  )
                ],
              ),
            ),
            const SizedBox(height: 12,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextContainer(title: 'All'),
                  TextContainer(title: 'Politic'),
                  TextContainer(title: 'Sport'),
                  TextContainer(title: 'Education'),
                  TextContainer(title: 'Games'),
                  TextContainer(title: 'cooking'),
                  TextContainer(title: 'Fasions'),
                  TextContainer(title: 'Projects'),
                ],
              ),
            ),
          ]
        )
      )
    );
  }
}
