import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../controllers/accountMessage.dart';
import 'dart:ui' as ui;
import '../controllers/routes.dart';
import './homePage.dart';
//import './songGrade.dart';
import './lead_page.dart';
import './progress.dart';
import '../controllers/leaderboardData.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../controllers/accountData.dart';
import '../controllers/httpHelp.dart';
//Helper.baseUrl,Helper.baseApi+
class AccountPage extends StatefulWidget{
  AccountPage({super.key});

  @override
  _AccountPage createState() => _AccountPage();
}

class _AccountPage extends State<AccountPage>{
String pageName = "AccountPage";
MediaQueryData mediaQueryData = MediaQueryData.fromWindow(ui.window);

void _onItemTapped(int index) {
   // setState(() {
    
    if(index==0){
      
    Routes.offAll();
    }
    else if(index==1){
      AccountMessage.showLoadingDialog(context);
    //  await LeaderboardData.getData();
      LeaderboardData.getData()!.whenComplete(() {print("lanjut"); Routes.off("leaderboard");});
    }
    
      print(index);// = index;
   // } );
  }
  @override
  Widget build (BuildContext context){
    Routes.tempContext=context;
    return WillPopScope(
      onWillPop: ()async{
      Routes.getBack();
      return true;},
      child: SafeArea(
          child: Scaffold(
            extendBody: true,
              extendBodyBehindAppBar: true,
              resizeToAvoidBottomInset: false,
        body:Container( //expanded
        child:Container(
          decoration: BoxDecoration(
                    
                      gradient: LinearGradient(
                          begin: Alignment(1, 0.1),
                          end: Alignment(0, 0.1),
                          colors: [
                            
                        Color(0XFF0FD3D5),
                        Color(0XFF1BC2D8).withOpacity(0.88),
                        Color.fromARGB(255, 76, 144, 247)
                        
                      ]
                      )
                      ),
          child:Stack(
          alignment: Alignment.center,
        children:[Container(child:Column( //expanded
          children:[ Container(
                  width: mediaQueryData.size.width,
                  height: mediaQueryData.size.height*1/4,
                  
                  decoration: BoxDecoration(
                    
                      gradient: LinearGradient(
                          begin: Alignment(1, 0.1),
                          end: Alignment(0, 0.1),
                          colors: [
                            
                        Color(0XFF0FD3D5),
                        Color(0XFF1BC2D8).withOpacity(0.88),
                        Color.fromARGB(255, 76, 144, 247)
                        
                      ]
                      )
                      ),
                      ),
                      Expanded(child: //expanded
                      Container(
                      
                     
                      width: mediaQueryData.size.width,
                       decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(32),topRight: Radius.circular(32)),
                       ),
                  child: Column(
                        children: [
                          Text(""),
                          Text(""),
                          (MediaQuery.of(context).size.height>800)?Text(""):Text(AccountData.username!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
    
                          (MediaQuery.of(context).size.height>800)?Text(AccountData.username!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),):Text(""),
                          Container(
                            alignment: Alignment.centerLeft,
                            child:Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                accountOption(mediaQueryData),
                                statOption(mediaQueryData),
                                // myVipOption(mediaQueryData, context),
                                // ToS(mediaQueryData),
                                // otherAppOption( mediaQueryData)
                            ],
                            )
                          )
                          
                        ],
                      ),
                        
                        
                      ),
                      )
                      
          ]
        )
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(padding: EdgeInsets.all(10),
          child: IconButton(onPressed: () async{
            SharedPreferences sp = await SharedPreferences.getInstance();
            sp.clear();
            Routes.offAllLogout();}, icon: Icon(Icons.logout_rounded, size: 30,), color: Colors.white,),),
        ),
      
        Positioned(top:mediaQueryData.size.height*1/3-110,
        child: InkWell(
          onTap: () {
            Routes.put("imagePage");
          },
          child: profileImage(),
        ))
        ]
        )
        )
        ),bottomNavigationBar: BottomNavigationBar(backgroundColor: Color.fromARGB(255, 255, 255, 255),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
    
              icon: Icon(Icons.leaderboard),
              label: 'Leaderboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
          currentIndex: 2,
          selectedItemColor: Color.fromARGB(255, 34, 143, 231), 
          unselectedItemColor: Colors.grey, 
        onTap: _onItemTapped,
      )
      )
      ),
    );
  }
Widget profileImage(){
  return CircleAvatar(
    backgroundColor: const Color(0xff528DE7),
    child: SvgPicture.asset(AccountData.avatarList[AccountData.avatarIndex], width: 80,),
    radius: 45,
  );
}
}
//options=======================================================================================================================================

Widget accountOption(MediaQueryData mediaQueryData){
  return InkWell(
    onTap:(){print("tes");Routes.put("MyAcc");},
    child:Container(
    padding: EdgeInsets.all(16),
    width: mediaQueryData.size.width,
    child: Row(children: [
      Text("          "),
      Image(image:AssetImage("assets/images/accAcc.png"),
      height: 30,
      width: 30,
    ),
    Text("      "),
    Text(" "),
    Text("My Account"),
    Expanded(child: Container( //expanded
      alignment: Alignment.centerRight,
      child: Image(image:AssetImage("assets/images/arrowAcc.png")),
    ))
    ]
    
    ,),
    
  )
  );
}

Widget statOption(MediaQueryData mediaQueryData){
  return InkWell(
    onTap:()async{
       if(AccountData.state==1){
        print("1");
                //   var    response= await http.post(Uri.https(Helper.baseUrl,Helper.baseApi+"getMyData"),
                //   body:AccountData.userId.toString());
                //   var data=jsonDecode(response.body);
                  
                //   AccountData.weeklyTarget=data[0];
                //   AccountData.weeklyProgress=data[1];
                //   AccountData.weeklyStat=jsonDecode(data[2]);
  
            
                //   AccountData.activeDays=data[3];
                // AccountData.activeDaystreaks=data[4];
                //     AccountData.points=data[5];
                //     AccountData.playedSongs=data[6];
                // AccountData.playedIelts=data[7];
                // AccountData.totalReplay=data[8];
                //  AccountData.state=0;
                await AccountData.getData();
                  Routes.put("progress");
                
      }else{
        print("2");
      Routes.put("progress");
        }
      },
    child:Container(
    padding: EdgeInsets.all(16),
    width: mediaQueryData.size.width,
    child: Row(children: [
      Text("          "),
      Image(image:AssetImage("assets/images/statAcc.png"),
      height: 30,
      width: 30,
    ),
    Text("      "),
    Text(" "),
    Text("My Progress"),
    Expanded(child: Container( //expanded
      alignment: Alignment.centerRight,
      child: Image(image:AssetImage("assets/images/arrowAcc.png")),
    ))
    ]
    
    ,),
  ));
}

Widget myVipOption(MediaQueryData mediaQueryData, context){
  return InkWell(
    onTap:(){if(AccountData.permissionStatus != 1){
          Routes.put("ads");
        } else{
          Routes.put("vipPage");
        }},
    child:Container(
    padding: EdgeInsets.all(16),
    width: mediaQueryData.size.width,
    child: Row(children: [
      Text("          "),
      Image(image:AssetImage("assets/images/crownAcc.png"),
      height: 30,
      width: 30,
    ),
    Text("      "),
    Text(" "),
    Text("VIP"),
   Expanded(child: Container( //expanded
      alignment: Alignment.centerRight,
      child: Image(image:AssetImage("assets/images/arrowAcc.png")),
    ))
    ]
    
    ,),
  ));
}

Widget ToS(MediaQueryData mediaQueryData){
  return InkWell(
    onTap:(){Routes.put("ToS");},
    child:Container(
    padding: EdgeInsets.all(16),
    width: mediaQueryData.size.width,
    child: Row(children: [
      Text("          "),
      Image(image:AssetImage("assets/images/GroupAcc.png"),
      height: 30,
      width: 30,
    ),
    Text("      "),
    Text(" "),
    Text("Terms of Service"),
    Expanded(child: Container( //expanded
      alignment: Alignment.centerRight,
      child: Image(image:AssetImage("assets/images/arrowAcc.png")),
    ))
    ]
    
    ,),
  ));
}

Widget otherAppOption(MediaQueryData mediaQueryData){
  return InkWell(
    onTap:(){},
    child:Container(
    padding: EdgeInsets.all(16),
    width: mediaQueryData.size.width,
    child: Row(children: [
      Text("          "),
      Image(image:AssetImage("assets/images/otherappAcc.png"),
      height: 30,
      width: 30,
    ),
    Text("      "),
    Text(" "),
    Text("otherApp"),
    Expanded(child: Container( //Expanded
      alignment: Alignment.centerRight,
      child: Image(image:AssetImage("assets/images/arrowAcc.png")),
    ))
    ]
    
    ,),
  ));
}
