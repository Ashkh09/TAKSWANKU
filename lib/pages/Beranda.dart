import 'package:flutter/material.dart';
import 'package:taskwanku1/pages/Tentang.dart';

class Beranda extends StatelessWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.indigo),
                                  ),
                                  onPressed: () {
                                    showDialog(context: context, builder: (context) => dialog_beranda("Tujuan"),);
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 70,
                                    child: Center(child: const Text("Tujuan")),
                                  ),
                                ),
                                ElevatedButton(
                                  style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.red),
                                  ),
                                  onPressed: () {
                                    showDialog(context: context, builder: (context) => dialog_beranda("Pengantar"),);
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 70,
                                    child: Center(child: const Text("Penganter")),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.orange),
                                  ),
                                  onPressed: () {
                                    showDialog(context: context, builder: (context) => dialog_beranda("Tentang"),);
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 70,
                                    child: Center(child: const Text("Tentang")),
                                  ),
                                ),
                                ElevatedButton(
                                  style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.lightGreen),
                                  ),
                                  onPressed: () {
                                     showDialog(context: context, builder: (context) => dialog_beranda("Tata Tertib"),);
                                  },
                                  child: Container(
                                    height: 100,
                                    width: 70,
                                    child: Center(child: const Text("Tata Tertib")),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
                child: Container(
                  width: double.maxFinite,
                  height: 70.0,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                      child: Text(
                    "Beranda",
                    style: TextStyle(fontSize: 30, color: Colors.orange),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


Widget dialog_beranda (String text){
  return Dialog(
    child: Container(
      width: 200,
      height: 300,
      child: Center(
        child: Text(text, style: TextStyle(
          fontSize: 30
        ),),
      ),
    ),
  );
}