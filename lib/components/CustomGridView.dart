import 'package:flutter/material.dart';
class CustomGridView extends StatefulWidget {
  const CustomGridView({Key key}) : super(key: key);

  @override
  _CustomGridViewState createState() => _CustomGridViewState();
}

class _CustomGridViewState extends State<CustomGridView> {
  final images = [
    "assets/images/sports.png",
    "assets/images/politics.png",
    "assets/images/health.png",
    "assets/images/business.png",
    "assets/images/enviroment.png",
    "assets/images/science.png",
  ];
  final routsName = [
      "sports",
      "politics",
      "health",
      "business",
      "environment",
      "science"
  ];
  final elementsInRow = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
          crossAxisCount: elementsInRow,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          children: List.generate(images.length, (index){
            return Container(
              child: InkWell(
                child: Image.asset(images[index]),
                onTap: (){
                  Navigator.of(context).pushReplacementNamed(routsName[index]);
                },
              ),
            );
          }),
      )
    );
  }
}