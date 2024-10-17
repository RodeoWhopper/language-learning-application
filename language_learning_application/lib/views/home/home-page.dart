import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Kart Öğrenme Uygulaması"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            const Text(
              "Kart Öğrenme Uygulaması",
              style: TextStyle(fontSize: 36),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/decks');
                  },
                  child: const Text("Destelerim"),
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/quick');
                    },
                    child: const Text("Hızlıca Gözden Geçir"),
                  ),
                )),
            const Spacer(),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
