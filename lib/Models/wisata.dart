class Wisata {
  Wisata({
    required this.idPengunjung,
    required this.nama,
    required this.nik,
    required this.alamat,
    required this.telp,
    required this.foto,
    required this.idPengelola,
    required this.status,
    required this.namaPengelola,
    required this.createAt,
    required this.updateAt,
  });
  int idPengunjung;
  String nama;
  String nik;
  String alamat;
  String telp;
  String foto;
  int idPengelola;
  String status;
  String namaPengelola;
  String createAt;
  String updateAt;
  factory Wisata.fromJson(Map<String, dynamic> json) => Wisata(
        idPengunjung: json["id_pengunjung"],
        nama: json["nama"].toString(),
        nik: json["nik"].toString(),
        alamat: json["alamat"].toString(),
        telp: json["telp"].toString(),
        foto: json["foto"].toString(),
        idPengelola: json["id_pengelola"],
        status: json["status"].toString(),
        namaPengelola: json["nama_pengelola"].toString(),
        createAt: json["create_at"].toString(),
        updateAt: json["update_at"].toString(),
      );
}
