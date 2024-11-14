import 'package:flutter/material.dart';
import 'package:flutter_basics_real_project/components/appbar.dart';
import 'package:flutter_basics_real_project/components/searchfield.dart';
import 'package:flutter_basics_real_project/components/cardkategori.dart';
import 'package:flutter_basics_real_project/models/kategori.dart';
import 'package:flutter_basics_real_project/pages/detailbrg.dart';

class MyHomeWidget extends StatefulWidget {
  const MyHomeWidget({super.key});

  @override
  State<MyHomeWidget> createState() => _MyHomeWidgetState();
}

class _MyHomeWidgetState extends State<MyHomeWidget> {
  bool isAn = false;
  String? nm, img, desk;

  void _handleCardTap(int index) {
    List<CategoryModelRekomendasi> categories =
        CategoryModelRekomendasi.getCategories();
    String categoryName = categories[index].nama;
    if (index == 0) {
      setState(() {
        isAn = !isAn;
        nm = categoryName;
        img = categories[index].url;
        desk = categories[index].deskripsi;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: myAppbar(),
          body: ListView(children: [
            Stack(
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  searchFieldV1(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  cardKategori(),
                  const SizedBox(
                    height: 30.0,
                  ),
                  cardRecommendation(_handleCardTap),
                ]),
                Positioned(
                    child: detailbrg(
                        showContainer: isAn,
                        ti: nm,
                        context: context,
                        img: img,
                        desk: desk)),
              ],
            ),
          ])),
    );
  }
}
