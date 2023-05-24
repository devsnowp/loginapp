import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grêmio"),
        leading: const Icon(Icons.ondemand_video),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [
          const Text("3 Libertadores"),
          const Text("5 Copas do Brasil"),
          const Text("1 Mundial"),
          const Text("2 Brasileiros"),
          ElevatedButton(
            onPressed: () {},
            child: const Text("1903"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Filho binter"),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Image(image: AssetImage("assets/images/gremio.png")),
          )
        ]),
      ),
    );
  }
}
