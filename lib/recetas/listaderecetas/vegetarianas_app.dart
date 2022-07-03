import 'package:flutter/material.dart';

import '../../data/data_vegetarianas.dart';
import '../../models/recetas_model.dart';

class RecetasVegetarianas extends StatefulWidget {
  const RecetasVegetarianas({Key? key}) : super(key: key);

  @override
  State<RecetasVegetarianas> createState() => _RecetasVegetarianasState();
}

class _RecetasVegetarianasState extends State<RecetasVegetarianas> {
  final controller = TextEditingController();

  String query = "";
  List<Recetas> recetas = [];

  @override
  void initState() {
    super.initState();
    recetas = allRecetasVegetarianas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Recetas Vegetarianas"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 1,
              crossAxisSpacing: 5,
            ),
            itemCount: recetas.length,
            itemBuilder: (context, index) {
              return CardRecetas(recetas: recetas[index]);
            },
          ),
        ],
      ),
    );
  }
}

class CardRecetas extends StatelessWidget {
  const CardRecetas({
    Key? key,
    required this.recetas,
  }) : super(key: key);

  final Recetas recetas;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage(recetas.img),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      recetas.name,
                      style: TextStyle(
                        color: Colors.indigo,
                      ),
                    ),
                    Text("5"),
                    Icon(Icons.star),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Duration:"),
                    Text("25 minutos"),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
