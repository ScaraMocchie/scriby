import 'package:shared_preferences/shared_preferences.dart';
import 'package:tobagen2/controllers/routes.dart';
//import 'package:url_launcher/url_launcher.dart';
import '../screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LockScreen extends StatelessWidget {
  const LockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Routes.tempContext=context;
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: WillPopScope(
        onWillPop:  ()async{
      Routes.getBack();
      return true;},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: height,
          width: width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                Color(0xff0fd3d5),
                Color(0xff20bcda),
                Color(0xff32a6df),
                Color(0xff4292e3),
                Color(0xff527ee7),
              ])),
          child: SingleChildScrollView(
            child: Stack(children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  child: InkWell(
                    onTap: () async{
                      SharedPreferences sp = await SharedPreferences.getInstance();
              sp.clear();
                      Routes.off("login");
                    },
                    child: Icon(Icons.login_outlined, color: Colors.white,)),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 80,),
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Image.asset("assets/images/logomark.png"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Dear User, your trial has been expired",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 4.5,
                        height: 1.5),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "GET FULL ACCESS",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 4.5,
                        height: 1.5),
                  ),
                  const Text(
                    "TO TOBA APP\nAND BICARA AI\nBY A SINGLE PAYMENT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        letterSpacing: 4.5,
                        height: 1.6),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        benefits("Unlimited access to play song and dialogue", width),
                        SizedBox(
                          height: 10,
                        ),
                        benefits("Get feedback after playing song or dialogue", width),
                        SizedBox(
                          height: 10,
                        ),
                        benefits("Play with various difficulity levels", width)
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {},
                  //    async {
                  //   String url = '/basic-first-aid-procedures-1298578';
                  //   await launchUrl(Uri(
                  //     scheme: "https",
                  //     host: "www.verywellhealth.com",
                  //     path: url,
                  //   ));
                  // },
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: width,
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
                  SizedBox(height: 20,),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Row benefits(String sentence, var width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/images/check-fill.svg",
          width: 35,
        ),
        SizedBox(width: 5,),
        SizedBox(
          width: (width>300)?width*2/3:width*1.5/3,
          child: Text(
            sentence,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
