import 'package:bicaraai3/screens/songsection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FeatureInfo extends StatelessWidget {
  final String title;
  final String desc;
  final String image;
  const FeatureInfo({
    required this.title,
    required this.desc,
    required this.image,
    super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Align(
        alignment: Alignment.center,
        child: Container(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        height: 350,
        width: width,
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 180,
                    child: Text(desc,
                      style: TextStyle(fontSize: 16, letterSpacing: 2),
                    )),
                SvgPicture.asset(image,
                  width: 100,
                  colorFilter: ColorFilter.mode(Color(0xff528DE7), BlendMode.srcIn)
                )
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 45,
                width: width,
                margin: EdgeInsets.only(top: 40, bottom: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff527ee7),
                ),
                child: Text(
                  "BUY VIP",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "GO BACK",
                    style: TextStyle(
                        color: Color(0xff527ee7)),
                  )),
            )
          ],
        ),
          ),
      ),
    );
  }
}
