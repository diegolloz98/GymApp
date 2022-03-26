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
    Color.fromARGB(255, 82, 214, 138),
    Color.fromARGB(255, 0, 190, 156),
    Color.fromARGB(255, 241, 197, 14),
    Color.fromARGB(255, 222, 179, 25),
    Color.fromARGB(255, 193, 57, 45),
    Color.fromARGB(255, 155, 39, 27)
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
