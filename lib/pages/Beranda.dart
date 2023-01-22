import 'package:flutter/material.dart';

Widget beranda() {
  return SafeArea(
    child: Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 2,
                child: Align(
                  alignment: const AlignmentDirectional(0, 0),
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
                          Container(
                            margin: EdgeInsets.only(right: 10, bottom: 10),
                            width: 100,
                            height: 100,
                            child: Center(child: Text("Pengantar")),
                            decoration: const BoxDecoration(
                              color: Color(0xFF239D20),
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(10),
                                  top: Radius.circular(10)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            width: 100,
                            height: 100,
                            child: Center(child: Text("Tujuan")),
                            decoration: const BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(10),
                                  top: Radius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 10,
                            ),
                            width: 100,
                            height: 100,
                            child: Center(child: Text("Tentang")),
                            decoration: const BoxDecoration(
                              color: Color(0xFF7D0808),
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(10),
                                  top: Radius.circular(10)),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            child: Center(child: Text("Tata Tertib")),
                            decoration: const BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(10),
                                    top: Radius.circular(10))),
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
  );
}
