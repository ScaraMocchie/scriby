import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tobaapp/controllers/routes.dart';

class GradePage2 extends StatelessWidget {
  final double nilai;
  GradePage2({super.key, this.nilai = 2/3});

  @override
  Widget build(BuildContext context) {
    Routes.tempContext=context; 
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    var msg = (nilai == 1)?"Awesome!"
    :(nilai >= 9/10)?"Great Job!"
    :(nilai >7/10)?"Good!"
    :"Never Give Up!";
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 15.0,
                  percent: nilai, // Adjust the percentage as needed
                  center:
                   Text("${(nilai*100).round()}%",style: TextStyle(fontSize: 40,fontFamily: 
                  "Poppins",fontWeight: FontWeight.w600,color: Color(0xFF527EE7)),),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Color(0xFF1CC2D9),
              ),
              SizedBox(height: 20,),
              Text(msg, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30, fontFamily: "Poppins"),),
              SizedBox(height: (height/3)-50,),
              // (nilai==1.0)?;
              InkWell(
                onTap:() {
                  Navigator.pop(context);
                  Routes.getBack();
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 45,
                  width: width,
                  decoration: BoxDecoration(
                    color: Color(0xFF527EE7),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("Finish Review", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20, fontFamily: "Poppins"),),
                ),
                ),
                SizedBox(height: height*100/850,)
            ],
          ),
        ),
      ), 
      
    );
  }
}