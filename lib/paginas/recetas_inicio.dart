import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:recetas_app/recetas/listaderecetas/vegetarianas_app.dart';

class RecetasInicio extends StatelessWidget {
  const RecetasInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carouselImages = [
      "https://firebasestorage.googleapis.com/v0/b/recetas-de-cocina-a7f8d.appspot.com/o/1.png?alt=media&token=9c311215-1c48-49af-9d15-3925e83f8405",
      "https://firebasestorage.googleapis.com/v0/b/recetas-de-cocina-a7f8d.appspot.com/o/12.png?alt=media&token=1e40c381-6084-4c07-94a6-050dbc02ce71",
      "https://firebasestorage.googleapis.com/v0/b/recetas-de-cocina-a7f8d.appspot.com/o/5.png?alt=media&token=a0d671db-3da5-4e2e-9e16-be9925b6611a",
    ];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green.shade900,
              const Color(0xff196A7A),
              Colors.greenAccent
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 15,
            ),
            CarouselSlider.builder(
              itemCount: carouselImages.length,
              itemBuilder: (context, index, realIndex) {
                final carouselImage = carouselImages[index];
                return builImage(carouselImage, index);
              },
              options: CarouselOptions(
                height: 190,
                autoPlay: true,
                scrollDirection: Axis.horizontal,
                autoPlayCurve: Curves.easeInOut,
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 15),
              child: Center(
                child: Text(
                  "LISTA DE RECETAS",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return RecetasVegetarianas();
                        }));
                      },
                      child: const CardImagesRecetas(
                        image:
                            'https://firebasestorage.googleapis.com/v0/b/recetas-de-cocina-a7f8d.appspot.com/o/5.png?alt=media&token=a0d671db-3da5-4e2e-9e16-be9925b6611a',
                        text: 'RECETAS VEGETARIANAS',
                      ),
                    ),
                    CardImagesRecetas(
                      image:
                          'https://firebasestorage.googleapis.com/v0/b/recetas-de-cocina-a7f8d.appspot.com/o/12.png?alt=media&token=1e40c381-6084-4c07-94a6-050dbc02ce71',
                      text: 'RECETAS DE CARNE',
                    ),
                    CardImagesRecetas(
                      image:
                          'https://firebasestorage.googleapis.com/v0/b/recetas-de-cocina-a7f8d.appspot.com/o/6.png?alt=media&token=6b359e96-0ef3-4f17-b8f2-a4ca069e41f3',
                      text: 'POSTRES',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CardImagesRecetas(
                      image:
                          'https://firebasestorage.googleapis.com/v0/b/recetas-de-cocina-a7f8d.appspot.com/o/5.png?alt=media&token=a0d671db-3da5-4e2e-9e16-be9925b6611a',
                      text: 'RECETAS DE PESCADO',
                    ),
                    CardImagesRecetas(
                      image:
                          'https://firebasestorage.googleapis.com/v0/b/recetas-de-cocina-a7f8d.appspot.com/o/12.png?alt=media&token=1e40c381-6084-4c07-94a6-050dbc02ce71',
                      text: 'HAMBURGUESAS',
                    ),
                    CardImagesRecetas(
                      image:
                          'https://firebasestorage.googleapis.com/v0/b/recetas-de-cocina-a7f8d.appspot.com/o/6.png?alt=media&token=6b359e96-0ef3-4f17-b8f2-a4ca069e41f3',
                      text: 'RECETAS CON POLLO',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget builImage(String cardImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: 400.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              cardImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
}

class CardImagesRecetas extends StatelessWidget {
  final String text;
  final String image;

  const CardImagesRecetas({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.red, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: SizedBox(
        width: 190,
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image(
                image: NetworkImage(image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff196A7A),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
