import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/wisata.dart';

class DetailWisataPage extends StatefulWidget {
  DetailWisataPage({required this.wisata});
  final Wisata wisata;

  @override
  _DetailWisataPageState createState() => _DetailWisataPageState();
}

class _DetailWisataPageState extends State<DetailWisataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.wisata.nama),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Image.network(widget.wisata.foto),
            Container(
              padding: EdgeInsets.all(5),
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                ),
              ),
              child: Text(
                widget.wisata.nik,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightBlue,
              width: double.infinity,
              height: double.maxFinite,
              child: new Text(widget.wisata.alamat),
            ),
          ],
        ),
      ),
    );
  }
}
