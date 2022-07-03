import 'package:flutter/material.dart';

class DrawerRecetas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green.shade900,
              const Color(0xff196A7A),
              //Colors.greenAccent
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/recetas/1.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const _ListitleWidget(
                      icon: Icons.home,
                      text: "Menu De Inicio",
                      iconColor: Colors.amber,
                      //textColor: Colors.indigoAccent,
                    ),
                  ),
                  const _ListitleWidget(
                    icon: Icons.favorite,
                    text: "RECETAS FAVORITAS",
                    iconColor: Colors.amber,
                    //textColor: Colors.indigoAccent,
                  ),
                  const _ListitleWidget(
                    icon: Icons.play_circle,
                    text: "VIDEOS DE RECETAS",
                    iconColor: Colors.amber,
                    //textColor: Colors.indigoAccent,
                  ),
                  const _ListitleWidget(
                    icon: Icons.share,
                    text: "COMPARTIR APP",
                    iconColor: Colors.amber,
                    //textColor: Colors.indigoAccent,
                  ),
                  const _ListitleWidget(
                    icon: Icons.book,
                    text: "TERMINOS Y CONDICIONES",
                    iconColor: Colors.amber,
                    //textColor: Colors.purple,
                  ),
                ],
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                title: Center(
                  child: Text(
                    "© Gian Sandoval",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ListitleWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  //final Color textColor;

  const _ListitleWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.iconColor,
    //required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: iconColor,
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
