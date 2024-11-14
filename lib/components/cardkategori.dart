import 'package:flutter/material.dart';
import 'package:flutter_basics_real_project/models/kategori.dart';

Column cardKategori() {
  List<CategoryModel> categories = CategoryModel.getCategories();
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              "Kategori",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20.0,
      ),
      Container(
        color: Colors.transparent,
        height: 140,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => {},
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: categories[index].boxColor,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: [
                      Image.network(categories[index].iconPath),
                      Text(
                        categories[index].name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
              );
            },
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(
                  width: 20.0,
                ),
            itemCount: categories.length),
      ),
    ],
  );
}

Column cardRecommendation(Function(int) _handleCardTap) {
  List<CategoryModelRekomendasi> categories =
      CategoryModelRekomendasi.getCategories();
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Text(
              "Rekomendasi Barang",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20.0,
      ),
      Container(
        color: Colors.transparent,
        height: 300,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => _handleCardTap(index),
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      color: categories[index].bgcolor,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: [
                      Image.network(categories[index].url),
                      Text(
                        categories[index].nama,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          categories[index].deskripsi,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(
                  width: 20.0,
                ),
            itemCount: categories.length),
      ),
    ],
  );
}
