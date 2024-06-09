import 'package:flutter/material.dart';
import 'package:tobaapp/controllers/routes.dart';

class AccountMessage{
  static String emailValidator (String value) {
    final bool emailValid = 
    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value);
    if (emailValid != true){
      return 'Invalid email adress';
    }
    return '';
  }
  static void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 10),
              Text("Loading..."),
            ],
          ),
        );
      },
    );
  }
}

showLoadingDialogQuit(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return WantQuit();
      },
    );
  }



class WantQuit extends StatelessWidget {
  const WantQuit({super.key});
  
  @override
  Widget build(BuildContext context) {
    Routes.tempContext=context; 
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
     backgroundColor: Colors.transparent,
     body: Align(
      alignment: Alignment.center,
       child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 35),
        padding: EdgeInsets.all(10),
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: width,
              child: Text("Are you sure want to quit?\nYour progress won't be saved", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: cancel(),
                ),
                SizedBox(width: 20,),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Routes.getBack();
                  },
                  child: Quit(),
                ),
                
              ],
            )
          ],
        ),
       ),
     ),
    );
  }

  Container cancel() {
    return Container(
                alignment: Alignment.center,
    padding: EdgeInsets.symmetric(vertical: 5),
    width: 100,
    decoration: BoxDecoration(
      color: Color(0xff528DE7),
      borderRadius: BorderRadius.circular(5)
    ),
    child: Text("CANCEL", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),),
  );
  }

  Container Quit() {
    return Container(
      alignment: Alignment.center,
      width: 100,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xff528DE7)),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Text("QUIT", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff528DE7), fontSize: 20),),
    );
  }
}