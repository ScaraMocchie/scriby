import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tobagen2/controllers/accountData.dart';
import 'package:tobagen2/controllers/routes.dart';
import 'package:tobagen2/widgets/vipcard.dart';

class VIPPage extends StatelessWidget {
  const VIPPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    String vipStat = (AccountData.permissionStatus==1)?"VIP": "trial";
    Routes.tempContext=context;
    return WillPopScope(child: 
    Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded), onPressed: (){Routes.getBack();},),
        title: Text("You are a VIP Member"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              VIPCard(width, vipStat),
              SizedBox(height: 90,),
              SvgPicture.asset("assets/images/congrats_VIP.svg", width: (width>height)?width/3:width*7/10,),
              SizedBox(height: 20,),
              SizedBox(width: width, child:
                Text("CONGRATULATION!", textAlign: TextAlign.center, style: TextStyle(color: Color(0xff528DE7), fontWeight: FontWeight.bold, fontSize: 20),),),
                SizedBox(
                  width: width*7/10,
                  child: Text("You are have full access to all premium features in this app", textAlign: TextAlign.center, style: TextStyle(fontSize: 18),)),
                  SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    ), onWillPop: ()async{
      Routes.getBack();
      return true;});
  }
}