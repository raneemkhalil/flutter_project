import 'package:flutter/material.dart';
import 'package:myapp/containers/text_container.dart';
import 'package:myapp/containers/news_container.dart';
import 'package:myapp/pages/my_home_page.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPage();
}

class _NewsPage extends State<NewsPage> {

  final List<String> titles = const [
    'All',
    'Politic',
    'Sport',
    'Education',
    'Games',
    'cooking',
    'Fasions',
    'Projects',
  ];


  final Map<String, List<Map<String, String>>> details = const {'All': [
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
  ]};

  int _selectedIndex = 0;

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
            onPressed: (){
              Navigator.of(context).pop(MaterialPageRoute(builder: (context) => const MyHomePage()));
            },
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
                  ...List.generate(titles.length, (i) => GestureDetector(
                    child: TextContainer(title: titles[i], isActive: i == _selectedIndex ? true : false),
                    onTap: (){
                      setState((){
                        _selectedIndex = i;
                      });
                    }
                  )),
                ],
              ),
            ),
            const SizedBox(height: 12,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    if(details.containsKey(titles[_selectedIndex])) ...List.generate(details[titles[_selectedIndex]]!.length, (j) => NewsContainer(
                        category: details[titles[_selectedIndex]]?[j]['category'], 
                        picture: details[titles[_selectedIndex]]?[j]['picture'],
                        title: details[titles[_selectedIndex]]?[j]['title'],
                        auther: details[titles[_selectedIndex]]?[j]['auther'],
                        personalPic: details[titles[_selectedIndex]]?[j]['personal_pic'],
                        date: details[titles[_selectedIndex]]?[j]['deploy_date'],
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
