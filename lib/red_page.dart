import 'package:flutter/material.dart';

class RedPage extends StatefulWidget {
  const RedPage({super.key});

  @override
  State<RedPage> createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  late String name;
  @override
  void initState() {
    super.initState();
    name = "Ali";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Red Page"),
        backgroundColor: Colors.red.shade400,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Red Page", style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(), // Kenarlık verir
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/yellowPage2");
              },
              child: Text("Sarı Sayfaya Git"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
                side: BorderSide(color: Colors.purpleAccent),
                fixedSize: Size(300, 50),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/greenPage", arguments: name);
              },
              child: Text("Yeşil Sayfaya Git"),
            ),
          ],
        ),
      ),
    );
  }
}
