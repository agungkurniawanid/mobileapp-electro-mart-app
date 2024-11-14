import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar myAppbar() {
  return AppBar(
    title: const Text(
      "Gungzzlee Com",
      style: TextStyle(
        color: Colors.black,
        fontFamily: "Poppins",
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    centerTitle: true,
    leading: GestureDetector(
      onTap: () {
        // Tambahkan fungsi ketika leading di-tap
      },
      child: Container(
        alignment: Alignment.center,
        width: 30,
        height: 30,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SvgPicture.asset(
          "assets/icons/Arrow - Left 2.svg",
          width: 24,
          height: 24,
        ),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          // Tambahkan fungsi ketika actions di-tap
        },
        child: Container(
          alignment: Alignment.center,
          width: 30,
          height: 30,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            "assets/icons/dots.svg",
            width: 5,
            height: 5,
          ),
        ),
      )
    ],
  );
}
