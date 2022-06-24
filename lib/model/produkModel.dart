// To parse this JSON data, do
//
//     final produk = produkFromJson(jsonString);

import 'dart:convert';

Produk produkFromJson(String str) => Produk.fromJson(json.decode(str));

String produkToJson(Produk data) => json.encode(data.toJson());

class Produk {
  Produk({
    required this.idProduk,
    required this.kodeProduk,
    required this.namaProduk,
    required this.harga,
    required this.foto,
  });

  int idProduk;
  int kodeProduk;
  String namaProduk;
  int harga;
  String foto;

  factory Produk.fromJson(Map<String, dynamic> json) => Produk(
        idProduk: json["id_produk"],
        kodeProduk: json["kode_produk"],
        namaProduk: json["nama_produk"],
        harga: json["harga"],
        foto: json["foto"],
      );

  Map<String, dynamic> toJson() => {
        "id_produk": idProduk,
        "kode_produk": kodeProduk,
        "nama_produk": namaProduk,
        "harga": harga,
        "foto": foto,
      };
}
