import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tobagen2/controllers/accountData.dart';
import 'package:tobagen2/controllers/routes.dart';

class AccountInfos extends StatelessWidget {
  const AccountInfos({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    String vipdate = (AccountData.permissionStatus == 1)?"VIP Expiration Date":"Trial Expiration Date";
    Routes.tempContext=context;
    return WillPopScope(
      onWillPop: ()async{
      Routes.getBack();
      return true;},
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back_ios_rounded), onPressed: (){Routes.getBack();},),
          title: Text("My Account"),
        ),
        body: Container(padding: EdgeInsets.symmetric(horizontal: 20), width: width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              CircleAvatar(
    backgroundColor: const Color(0xff528DE7),
    child: SvgPicture.asset(AccountData.avatarList[AccountData.avatarIndex], width: 90,),
    radius: 50,
  ),
              SizedBox(height: 40,),
              ProfileCard(width, "Username", AccountData.username!, Icon(Icons.person, size: 33,)),
              ProfileCard(width, "Email", AccountData.email!, Icon(Icons.email, size: 30,)),
              ProfileCard(width, vipdate, AccountData.deadlinePermission!, Icon(Icons.date_range, size: 30,)),
            ],
          )
        ),),
      ),
    );
  }

  Container ProfileCard(double width, String title, String content, var suffixIcon) {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              margin: EdgeInsets.only(bottom: 20),
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(color: Color(0xff528DE7), width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [suffixIcon,
                SizedBox(width: width-40-70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text(content, style: TextStyle(fontSize: 15),)
                  ],
                ),)
                ],
              ),
            );
  }
}