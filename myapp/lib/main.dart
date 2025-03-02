import 'package:flutter/material.dart';
import 'segundapantalla';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Row(
          children: [
            Icon(Icons.videogame_asset, color: Colors.white),
            SizedBox(width: 10),
            Text("Tiny Tina's Wonderlands",
                style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Primera fila
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/image1.jpg',
                      width: 100, height: 150, fit: BoxFit.cover),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Juego base",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        const Text(
                          "Tiny Tina es tu caótica guía a través de un extraordinario reino de sobremesa donde las reglas rara vez se aplican. Explora un vasto mundo que abarca ciudades majestuosas, húmedos bosques de hongos, fortalezas premonitorias y mucho más",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetailsScreen()),
                            );
                          },
                          child: const Text("Ir a Detalles"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Segunda fila
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Antagonista",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        const TextField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder())),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("+info"))
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Image.asset('assets/image2.webp',
                      width: 250, height: 350, fit: BoxFit.cover),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
