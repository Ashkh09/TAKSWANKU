import 'package:flutter/material.dart';
import 'package:taskwanku1/model/model_materi.dart';

import '../dialog/dialog_materi.dart';

class Materi extends StatelessWidget {
  const Materi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = [
      modelMateri(judul: "Materi 1", isi: "Isi Materi 1"),
      modelMateri(judul: "Materi 2", isi: "Isi Materi 2"),
      modelMateri(judul: "Materi 3", isi: "Isi Materi 3"),
      modelMateri(judul: "Materi 4", isi: "Isi Materi 4")
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Stack(children: [
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
                    "Materi",
                    style: TextStyle(fontSize: 30, color: Colors.orange),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 90, 30, 30),
            child: Card(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 5,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ListView.builder(
                      itemCount: item.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            // aksi yang diinginkan saat container ditekan
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text(item[index].judul),
                                  content: Text(item[index].isi),
                                  actions: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.clear),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 15, left: 10, right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                color: Colors.white,
                              ),
                              margin: EdgeInsets.only(bottom: 15),
                              child: ListTile(
                                tileColor: Colors.greenAccent,
                                title: Text(item[index].judul),
                                leading: Icon(Icons.book),
                                iconColor: Colors.orange,
                                trailing: Text("baca"),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
