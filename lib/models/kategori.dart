import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Tablet',
        iconPath:
            'https://i.ibb.co/7rPKgSD/14cb2645e76ff82f100299f962213a63.webp',
        boxColor: const Color(0xff9DCEFF)));

    categories.add(CategoryModel(
        name: 'Laptop',
        iconPath:
            'https://i.ibb.co/LDKmVKP/341b79240d2678a0a93637d3f4100fe4.webp',
        boxColor: const Color(0xffEEA4CE)));

    categories.add(CategoryModel(
        name: 'Mini PC',
        iconPath:
            'https://i.ibb.co/cvDTXfh/b678baba61d40e582b6bdf0c77c3ba38.webp',
        boxColor: const Color(0xff9DCEFF)));

    categories.add(CategoryModel(
        name: 'Accessories',
        iconPath: 'https://i.ibb.co/3FWKNf0/2016051616164924.webp',
        boxColor: const Color(0xffEEA4CE)));

    return categories;
  }
}

class CategoryModelRekomendasi {
  String nama;
  String url;
  Color bgcolor;
  String deskripsi;

  CategoryModelRekomendasi({
    required this.nama,
    required this.url,
    required this.bgcolor,
    required this.deskripsi,
  });

  static List<CategoryModelRekomendasi> getCategories() {
    List<CategoryModelRekomendasi> categories = [];

    categories.add(CategoryModelRekomendasi(
      nama: 'Corebook',
      url: 'https://i.ibb.co/LDKmVKP/341b79240d2678a0a93637d3f4100fe4.webp',
      bgcolor: const Color(0xffABCDEF),
      deskripsi:
          'CoreBook adalah laptop yang elegan dan ringkas dengan performa tinggi, dilengkapi layar sentuh, desain ergonomis, portabilitas, dan prosesor cepat.',
    ));
    categories.add(CategoryModelRekomendasi(
      nama: 'Mini PC Z120',
      url: 'https://i.ibb.co/qBskg27/bcecfafb4a1c2dbbeb0f52567719424b.webp',
      bgcolor: const Color(0xffABCDEF),
      deskripsi:
          'Mini PC adalah laptop yang elegan dan ringkas dengan performa tinggi, dilengkapi layar sentuh, desain ergonomis, portabilitas, dan prosesor cepat.',
    ));

    categories.add(CategoryModelRekomendasi(
      nama: 'Gemibook Xpro',
      url: 'https://i.ibb.co/xgBTSgY/054ec402e546b29cba4c9be9a4e43f1b.webp',
      bgcolor: const Color(0xffABCDEF),
      deskripsi:
          'Gemiboox adalah laptop yang elegan dan ringkas dengan performa tinggi, dilengkapi layar sentuh, desain ergonomis, portabilitas, dan prosesor cepat.',
    ));

    // Tambahkan kategori lainnya jika diperlukan

    return categories;
  }
}
