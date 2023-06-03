import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      return const Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: 50,
            ),
            Fondo(),
            SingleChildScrollView(child: Contenido())
          ],
        ),
      );
    });
  }
}

class Fondo extends StatelessWidget {
  const Fondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color.fromARGB(255, 43, 37, 37),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 29, 24, 24),
        Color.fromARGB(255, 68, 51, 51),
        Color.fromARGB(255, 86, 63, 63),
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({super.key});

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 200,
          ),
          Image.asset(
            'assets/txt_globe.png',
            height: 195,
            width: 195,
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Welcome to TDG!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            textAlign: TextAlign.center,
            'A one-stop portal for you to learn the latest technologies from scratch',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Botones(),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          height: 60,
          /*decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),*/
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(240, 201, 176, 52)),
            ),
            child: const Text(
              'Get Started',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
          width: double.infinity,
        ),
      ],
    );
  }
}
