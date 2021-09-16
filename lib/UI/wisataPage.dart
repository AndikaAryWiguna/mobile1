import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/wisata.dart';
import 'package:flutter_application_1/Services/apiStatic.dart';
import 'package:flutter_application_1/UI/detailWisataPage.dart';
import 'package:flutter_application_1/UI/homePage.dart';

class WisataPage extends StatefulWidget {
  @override
  _WisataPageState createState() => _WisataPageState();
}

class _WisataPageState extends State<WisataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Daftar Pengunjung Wisata"),
        ),
        body: FutureBuilder<List<Wisata>>(
          future: ApiStatic.getwisata(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              List<Wisata> listWisata = snapshot.data!;
              return Container(
                padding: EdgeInsets.all(5),
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) => Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  DetailWisataPage(
                                    wisata: listWisata[index],
                                  )));
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(top: 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.white,
                              border: Border.all(
                                  width: 1, color: Colors.lightGreenAccent)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.network(
                                listWisata[index].foto,
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Text(listWisata[index].nama),
                                  Text(
                                    listWisata[index].namaPengelola,
                                    style: TextStyle(fontSize: 8),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 1,
          onTap: (i) {
            switch (i) {
              case 0:
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                    builder: (BuildContext context) => HomePage()));
                break;
              case 1:
                Navigator.of(context).pushReplacement(new MaterialPageRoute(
                    builder: (BuildContext context) => WisataPage()));
                break;
              default:
            }
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                title: Text("Wisata")),
          ],
        ));
  }
}
