import 'dart:ui';

import 'package:flutter/material.dart';

Widget detailbrg(
    {bool? showContainer,
    String? ti,
    BuildContext? context,
    String? img,
    String? desk,
    Function()? onTap}) {
  return AnimatedOpacity(
    duration: const Duration(milliseconds: 800),
    opacity: showContainer == true ? 1.0 : 0.0,
    child: AnimatedContainer(
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
      width: showContainer == true ? MediaQuery.of(context!).size.width : 100,
      height: showContainer == true ? MediaQuery.of(context!).size.height : 50,
      color: showContainer == true ? Colors.white : Colors.blue,
      child: Column(children: [
        Image.network(
          img ?? "",
        ),
        Text(ti ?? "Detail Barang",
            style: const TextStyle(
                color: Colors.black,
                fontSize: 50.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            desk ?? "Detail Barang",
            style: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(10),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                minimumSize: MaterialStateProperty.all(
                    Size(MediaQuery.of(context!).size.width, 50)),
              ),
              child: const Text(
                "Add Cart",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Poppins", fontSize: 18.0),
              )),
        )
      ]),
    ),
  );
}
