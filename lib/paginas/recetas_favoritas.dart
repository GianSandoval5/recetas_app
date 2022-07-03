import 'package:flutter/material.dart';

class RecetasFavoritas extends StatelessWidget {
  const RecetasFavoritas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.indigo.shade900,
              Colors.indigoAccent,
            ],
          ),
        ),
      ),
    );
  }
}
