import 'package:flutter/material.dart';
import 'package:tobagen2/screens/account_infos.dart';
import 'package:tobagen2/screens/image_page.dart';
import 'package:tobagen2/screens/lockscreen.dart';
import 'package:tobagen2/screens/persuasive_ad.dart';
import 'package:tobagen2/screens/searchPage.dart';
import 'package:tobagen2/screens/seemore_page.dart';
import 'package:tobagen2/screens/tos_page.dart';
import 'package:tobagen2/screens/vip_page.dart';
import '../screens/homePage.dart';
import '../screens/accountPage.dart';
import '../screens/lead_page.dart';
import '../screens/login_page.dart';
import '../screens/progress.dart';
import '../screens/register_page.dart';
import '../screens/songGrade.dart';
import '../screens/song_ans_page.dart';
import '../screens/song_ans_page2.dart';
import '../screens/song_ans_page3.dart';
import '../screens/songsection.dart';
import 'dart:io';

class Routes{
  static BuildContext? tempContext;
  static List<String> routeList=[];
  static void getBack(){
    if(routeList.length==1 || routeList.length==0){
      exit(0);
    //  Navigator.of(tempContext!).pop(true);
    }else{
      int lastSecond=routeList.length-2;
      print("back");
      print(routeList[lastSecond]);
      off(routeList[lastSecond]);
      routeList.removeLast();
    }
    print(routeList);
  }
  static void offAll(){
    offAll1(tempContext!);
    print(routeList);
  }
    static void offAllLogout(){
    offAll2(tempContext!);
  }
  static void offAll1(BuildContext context){
      Route route = MaterialPageRoute(builder: (context)=>HomePage());
      Navigator.of(context).pushAndRemoveUntil(route, (Route<dynamic> route) => false);
      routeList.clear();
      routeList.add("home");
  }
  static void offAll2(BuildContext context){
      Route route = MaterialPageRoute(builder: (context)=>LoginPage());
      Navigator.of(context).pushAndRemoveUntil(route, (Route<dynamic> route) => false);
      routeList.clear();
  }
  static void popAllThenOff(String routeName){
    routeList.clear;
    off(routeName);
  }
  static void off(String routeName)
  {
    if(routeName=="home"){
      offHome(tempContext!);
    }
    else if(routeName=="account"){
      offAcc(tempContext!);
    }
    else if(routeName=="ads"){
      offAds(tempContext!);
    }
    else if(routeName=="lock"){
      offLock(tempContext!);
    }
else if(routeName=="leaderboard"){
      offLeaderboard(tempContext!);
    }
else if(routeName=="login"){
      offLogin(tempContext!);
    }
else if(routeName=="progress"){
      offStat(tempContext!);
    }
else if(routeName=="register"){
      offRegister(tempContext!);
    }
else if(routeName=="songGrade"){
      offGrade(tempContext!);
    }
else if(routeName=="song1"){
      offSong1(tempContext!);
    }
else if(routeName=="song2"){
      offSong2(tempContext!);
    }
else if(routeName=="song3"){
      offSong3(tempContext!);
    }
else if(routeName=="songSection"){
      offSongSection(tempContext!);
    }
    if(routeList.length==0){
    routeList.add(routeName);}
    else{
      routeList.removeLast();
      routeList.add(routeName);
    }
    print(routeList);
  }


  static void put(String routeName)
  {
    if(routeName=="home"){
      offHome(tempContext!);
    }
    else if(routeName=="seeMore"){
      offSeeMore(tempContext!);
    }
    else if(routeName=="imagePage"){
      offImagePage(tempContext!);
    }
    else if(routeName=="MyAcc"){
      offMyAcc(tempContext!);
    } else if(routeName=="ToS"){
      offToS(tempContext!);
    } 
    else if(routeName=="vipPage"){
      offVIP(tempContext!);
    }
    else if(routeName=="search"){
      offSearch(tempContext!);
    }
    else if(routeName=="ads"){
      offAds(tempContext!);
    }
    else if(routeName=="account"){
      offAcc(tempContext!);
    }
else if(routeName=="leaderboard"){
      offLeaderboard(tempContext!);
    }
else if(routeName=="login"){
      offLogin(tempContext!);
    }
else if(routeName=="progress"){
      offStat(tempContext!);
    }
else if(routeName=="register"){
      offRegister(tempContext!);
    }
else if(routeName=="songGrade"){
      offGrade(tempContext!);
    }
else if(routeName=="song1"){
      offSong1(tempContext!);
    }
else if(routeName=="song2"){
      offSong2(tempContext!);
    }
else if(routeName=="song3"){
      offSong3(tempContext!);
    }
else if(routeName=="songSection"){
      offSongSection(tempContext!);
    }
   
    routeList.add(routeName);
    print(routeList);
  }
  
  
  static void addToRouteList(String routeName){
    routeList.add(routeName);
  }
static void offHome(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => HomePage());
Navigator.pushReplacement(context, route);
  }
static void offAcc(BuildContext context){
  print("acc");
    Route route = MaterialPageRoute(builder: (context) =>AccountPage() );
Navigator.pushReplacement(context, route);
  }
static void offAds(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) =>PersuasiveAd() );
Navigator.pushReplacement(context, route);
  }
  static void offToS(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) =>TosPage() );
Navigator.pushReplacement(context, route);
  }
  static void offVIP(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) =>VIPPage() );
Navigator.pushReplacement(context, route);
  }
static void offSearch(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) =>SearchPage() );
Navigator.pushReplacement(context, route);
  }
static void offLeaderboard(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => LeadPage());
Navigator.pushReplacement(context, route);
  }
  static void offLock(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => LockScreen());
Navigator.pushReplacement(context, route);
  }
static void offSeeMore(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => SeeMore());
Navigator.pushReplacement(context, route);
  }
static void offImagePage(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => const ImagePage());
Navigator.pushReplacement(context, route);
  }
static void offMyAcc(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => AccountInfos());
Navigator.pushReplacement(context, route);
  }
static void offLogin(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) =>LoginPage());
Navigator.pushReplacement(context, route);
  }
  static void offStat(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => ProgressPage());
Navigator.pushReplacement(context, route);
  }
static void offRegister(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => RegisterPage());
Navigator.pushReplacement(context, route);
  }
  static void offGrade(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => SongGrade());
Navigator.pushReplacement(context, route);
  }
static void offSong1(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => SongAns());
Navigator.pushReplacement(context, route);
  } 

static void offSong2(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => SongAns2());
Navigator.pushReplacement(context, route);
  } 
static void offSong3(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => SongAns3());
Navigator.pushReplacement(context, route);
  } 
static void offSongSection(BuildContext context){
    Route route = MaterialPageRoute(builder: (context) => SongSection());
Navigator.pushReplacement(context, route);
  } 

  
   
  
}