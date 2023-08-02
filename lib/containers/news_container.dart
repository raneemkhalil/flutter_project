import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget{
  final category;
  final picture;
  final title;
  final personalPic;
  final auther;
  final date;

  const NewsContainer({super.key, required this.category,
   required this.picture, required this.title, required this.personalPic,
   required this.auther, required this.date
  });

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white24,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.width * 0.3, 
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: Image(
              image: AssetImage(picture),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left:15, top:5),
            width: MediaQuery.of(context).size.width * 0.51,
            height: MediaQuery.of(context).size.width * 0.35, 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: const TextStyle(
                    color: Colors.black54,
                  )
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  )
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.width * 0.08,
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue
                      ),
                      child: Image(
                        image: AssetImage(
                          personalPic
                        ),
                        fit: BoxFit.cover
                      )
                    ),
                    const SizedBox(width: 10),
                    Text(auther, style: const TextStyle(fontSize: 11, color: Colors.black54)),
                    const SizedBox(width: 10),
                    Container(
                      width: 5,
                      height: 5,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      )
                    ),
                    const SizedBox(width: 10),
                    Text(date, style: const TextStyle(fontSize: 11, color: Colors.black54)),
                  ]
                )
              ]
            )
          )
        ]
      )      
    );
  }
}