import 'package:flutter/material.dart';
import 'package:taskwanku1/main.dart';

class Cover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Stack(children: [
          const SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Image(
              image: AssetImage("assets/cover.png"),
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(100.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp(),)
                      );
                    },
                    child: const Text("Mulai"),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
