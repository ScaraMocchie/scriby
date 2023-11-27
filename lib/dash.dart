import 'package:flutter/material.dart';
import 'package:regislogindash/main.dart';
import 'package:regislogindash/staticdata.dart';
import 'package:regislogindash/submitbox.dart';

class Dashboard extends StatelessWidget {
  final String user= RegisData.name!;
  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard"), backgroundColor: Colors.purple,),
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 40),
              height: height-140,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                  Color.fromARGB(255, 222, 151, 234),
                    Colors.white,
                    Colors.white,
                    Colors.white
                ])
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text("Welcome $user", style: const TextStyle(fontSize: 20, letterSpacing: 3),),
                const SizedBox(height: 100,),
                const SubmitBox(),
                const SizedBox(height: 100,),
                InkWell(
                  onTap: () async{
                    print("THIS ID");
                    print(await RegisData.getId());
                    print(RegisData.first);
                    RegisData.savePref();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return const MyApp();}));},
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10)),
                      child: const Text("LOG OUT", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                  ),
                )
              ],),
            )
            ),
        ),
      );
  }
}