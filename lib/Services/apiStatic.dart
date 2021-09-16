import 'package:flutter_application_1/Models/wisata.dart';

class ApiStatic {
  static Future<List<Wisata>> getwisata() async {
    List<Wisata> wisata = [];
    for (var i = 0; i < 9; i++) {
      wisata.add(Wisata(
          idPengunjung: i,
          nama: "Nama Pengunjung" + i.toString(),
          nik: "123" + i.toString(),
          alamat: "Alamat",
          telp: "089697338542",
          foto:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Z-V4XfCOcHiTTv9Vv-5VcgvD3LEKBNfVUsapSOSRuCAUm_qerr-o0-aYE3A1JgkvdTE&usqp=CAU",
          idPengelola: 1,
          status: "Y",
          namaPengelola: "Supriyadi",
          createAt: "",
          updateAt: ""));
    }
    return wisata;
  }
}
