import 'package:flutter/material.dart';

class Browser extends StatelessWidget {
  Browser({Key? key}) : super(key: key);

  final title = [
    "Fisico",
    "Ejercicios",
    "Inspiracion",
    "Rutinas",
    "Alimentacion",
    "Nutricion"
  ];
  final icons = [
    Icons.fitness_center,
    Icons.directions_run,
    Icons.nature_people,
    Icons.directions_bike,
    Icons.fastfood,
    Icons.flatware,
  ];
  final pastelColors = [
    Colors.deepPurple[100],
    Colors.deepPurple[400],
    Colors.deepPurple[200],
    Colors.deepPurple[500],
    Colors.deepPurple[300],
    Colors.deepPurple,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              print("Container #$index tapped.");
            },
            child: Card(
              color: pastelColors[index],
              child: Center(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(icons[index], size: 50, color: Colors.white),
                  Text(
                    title[index],
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              )),
            ),
          );
        },
      ),
    );
  }
}
