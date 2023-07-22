import 'package:flutter/material.dart';
import 'package:myapp/containers/text_container.dart';
import 'package:myapp/containers/news_container.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  final List<Map> titles = const [
    const {'title': 'All', 'isActive': 'true'},
    const {'title': 'Politic', 'isActive': 'false'},
    const {'title': 'Sport', 'isActive': 'false'},
    const {'title': 'Education', 'isActive': 'false'},
    const {'title': 'Games', 'isActive': 'false'},
    const {'title': 'cooking', 'isActive': 'false'},
    const {'title': 'Fasions', 'isActive': 'false'},
    const {'title': 'Projects', 'isActive': 'false'}
  ];

  final List<Map> details = const [
    {
      'category': 'Sport', 
      'picture': 'assets/images/sports/volleyball.jpeg',
      'title': 'What Training Do Volleyball Players Need?',
      'auther': 'McKindney',
      'personal_pic': 'assets/images/people/p-5.jpeg',
      'deploy_date': 'Feb 27, 2023',
    },
    {
      'category': 'Education', 
      'picture': 'assets/images/educations/kids_edu.jpeg',
      'title': 'Secondary school places: When do parents find out?',
      'auther': 'Rosemary',
      'personal_pic': 'assets/images/people/lady.jpeg',
      'deploy_date': 'Feb 28, 2023',
    },
    {
      'category': 'Sport', 
      'picture': 'assets/images/sports/volleyball.jpeg',
      'title': 'What Training Do Volleyball Players Need?',
      'auther': 'McKindney',
      'personal_pic': 'assets/images/people/p-5.jpeg',
      'deploy_date': 'Feb 27, 2023',
    },
    {
      'category': 'Education', 
      'picture': 'assets/images/educations/kids_edu.jpeg',
      'title': 'Secondary school places: When do parents find out?',
      'auther': 'Rosemary',
      'personal_pic': 'assets/images/people/lady.jpeg',
      'deploy_date': 'Feb 28, 2023',
    },
    {
      'category': 'Sport', 
      'picture': 'assets/images/sports/volleyball.jpeg',
      'title': 'What Training Do Volleyball Players Need?',
      'auther': 'McKindney',
      'personal_pic': 'assets/images/people/p-5.jpeg',
      'deploy_date': 'Feb 27, 2023',
    },
    {
      'category': 'Education', 
      'picture': 'assets/images/educations/kids_edu.jpeg',
      'title': 'Secondary school places: When do parents find out?',
      'auther': 'Rosemary',
      'personal_pic': 'assets/images/people/lady.jpeg',
      'deploy_date': 'Feb 28, 2023',
    }
  ];

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
            Text(
              'Discover',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40, 
              ),
            ),
            Text(
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
                  SizedBox(width: 5,),
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 12,),
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
                  ),
                  SizedBox(width: 8,),
                ],
              ),
            ),
            const SizedBox(height: 12,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(titles.length, (i) => TextContainer(title: titles[i]['title'], isActive: titles[i]['isActive'], onTap: (){})),
                ],
              ),
            ),
            const SizedBox(height: 12,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ...List.generate(details.length, (i) => NewsContainer(
                      category: details[i]['category'], 
                      picture: details[i]['picture'],
                      title: details[i]['title'],
                      auther: details[i]['auther'],
                      personalPic: details[i]['personal_pic'],
                      date: details[i]['deploy_date'],
                    ))
                  ]
                )
              )
            )
          ]
        )
      )
    );
  }
}
