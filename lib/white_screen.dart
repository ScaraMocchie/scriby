import 'package:flutter/material.dart';
import 'package:regislogindash/register.dart';
import 'package:regislogindash/staticdata.dart';
import 'package:regislogindash/login.dart';


class WhiteScreen extends StatefulWidget {
  const WhiteScreen({super.key});

  @override
  State<WhiteScreen> createState() => _WhiteScreenState();
}

class _WhiteScreenState extends State<WhiteScreen> {
  @override
  void initState() {
    RegisData.savePref();
    RegisData.getFirst().whenComplete(() async {
      if (RegisData.first == false) {
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) {
          return const Login();
        }));
      } else{
          Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) {
          return const Regist();
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Container(
      height: height,
      width: width,
      color: Colors.white,
    );
  }
}