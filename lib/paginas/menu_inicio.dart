import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:recetas_app/paginas/paginas_screen.dart';

class MenuInicio extends StatefulWidget {
  const MenuInicio({Key? key}) : super(key: key);

  @override
  State<MenuInicio> createState() => _MenuInicioState();
}

class _MenuInicioState extends State<MenuInicio> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  final screens = [
    RecetasInicio(),
    RecetasFavoritas(),
    VideosDeRecetas(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
      Icon(Icons.favorite, size: 30),
      Icon(Icons.movie, size: 30),
    ];
    return Scaffold(
      drawer: DrawerRecetas(),
      extendBody: true,
      appBar: AppBar(
        title: Text("RECETAS APP"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.green.shade900,
                Color(0xff196A7A),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: screens[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          key: navigationKey,
          height: 60,
          animationCurve: Curves.easeInOut,
          color: Color(0xff196A7A),
          buttonBackgroundColor: Colors.green,
          backgroundColor: Colors.transparent,
          animationDuration: Duration(milliseconds: 300),
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
    );
  }
}
