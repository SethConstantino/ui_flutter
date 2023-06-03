import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 29, 24, 24),
          elevation: 0,
          shadowColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 222, 214, 214),
            ),
            onPressed: () {},
          ),
        ),
        body: const Stack(
          children: [Fondo(), SingleChildScrollView(child: Contenido())],
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
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 29, 24, 24),
        Color.fromARGB(255, 29, 24, 24),
        Color.fromARGB(255, 29, 24, 24),
        Color.fromARGB(255, 29, 24, 24),
        Color.fromARGB(255, 68, 51, 51),
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
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Sign in to TGD and \ncontinue',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 222, 214, 214),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            textAlign: TextAlign.center,
            'Enter your email and password below to continue to The Growing Developer and let the learning begin! ',
            style: TextStyle(
              color: Color.fromARGB(255, 188, 186, 186),
              fontSize: 13,
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Datos(),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({super.key});

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(245, 231, 231, 231)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 35,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: IconButton(
                  color: Color.fromARGB(255, 35, 71, 37),
                  icon: const Icon(Icons.person_outlined),
                  onPressed: () {
                    setState(() {});
                  },
                ),
                hintText: 'Username',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: obs,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: IconButton(
                  color: Color.fromARGB(255, 36, 68, 38),
                  icon: const Icon(Icons.password_outlined),
                  onPressed: () {
                    setState(() {});
                  },
                ),
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Botones(),
            const SizedBox(
              height: 30,
            ),
          ]),
    );
  }
}

// ***
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
          height: 50,
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
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
          width: double.infinity,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Signin with Google',
                style: TextStyle(
                    color: Color.fromARGB(255, 68, 51, 51),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
        ),
        const SizedBox(
          height: 15,
          width: double.infinity,
        ),
      ],
    );
  }
}
