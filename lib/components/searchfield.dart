import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Container searchFieldV1() {
  return Container(
    margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
          color: const Color(0xFF1D1617).withOpacity(0.11),
          blurRadius: 30.0,
          spreadRadius: 0.0)
    ]),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Cari Barang",
        hintStyle: const TextStyle(fontFamily: "Poppins", fontSize: 16.0),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 28.0,
        ),
        prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset("assets/icons/Search.svg")),
        suffixIcon: Container(
          width: 100,
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                VerticalDivider(
                  color: Colors.grey.shade300,
                  thickness: 1.0,
                  indent: 10,
                  endIndent: 10,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/icons/Filter.svg")),
              ],
            ),
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide.none),
      ),
    ),
  );
}
