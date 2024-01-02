import 'dart:convert';
import 'httpHelp.dart';

import 'package:http/http.dart' as http;



//SongSectionData.audioType
class SongSectionData{
   static String? audioType;
  static  List<String>? titles;
  static  List<String>? singer;
  static  List<String>? imageLink;
  static List<String>? getTitle;
  static  List<String>? recTitles;
  static  List<String>? recSinger;
  static  List<String>? recImageLink;
  static List<String>? recGetTitle;
  static bool fillBasicSongListStatus=false;
  static void makeNull1(){
    SongSectionData.titles = null;
    SongSectionData.singer = null;
    SongSectionData.imageLink = null;
    SongSectionData.getTitle = null;
    SongSectionData.fillBasicSongListStatus = false;
  }
  static  List<String>? titles2;
  static  List<String>? singer2;
  static  List<String>? imageLink2;
  static List<String>? getTitle2; 
  static bool fillFavSongListStatus=false;
  static void makeNull2(){
    SongSectionData.titles2 = null;
    SongSectionData.singer2 = null;
    SongSectionData.imageLink2 = null;
    SongSectionData.getTitle2 = null;
    SongSectionData.fillFavSongListStatus = false;
  } 
  static void itemPrepare1(){
    SongSectionData.titles = [];
    SongSectionData.singer = [];
    SongSectionData.imageLink = [];
    SongSectionData.getTitle = [];
  
  }
  static void itemPrepare2(){
    SongSectionData. recTitles= [];
  SongSectionData.recSinger= [];
  SongSectionData.recImageLink= [];
  SongSectionData. recGetTitle= [];
  }
  static Future<int> storeApi() async{
    /*
    

    [
      [
        title,
        singer,
        imagelink
      ]
      ,
      [
        title,
        singer,
        imagelink
      ]
    ]
    */
    audioType="Song";
      var response=await http.get(Uri.https(Helper.baseUrl,Helper.baseApi+"getBasicSongList")).timeout(
                                          const Duration(seconds: 13),
                      onTimeout: (){

                                          return http.Response("nope", 500);});
      List<dynamic> listBody=jsonDecode(response.body);
     itemPrepare1();
    for(int i=0;i<listBody.length;i++){
      List<dynamic> tempList=listBody[i];
      
         SongSectionData.titles?.add(tempList[1]);
      SongSectionData. singer?.add(tempList[2]);
       SongSectionData.imageLink?.add(tempList[3]);
       SongSectionData.getTitle?.add(tempList[4]);
      
    }
     SongSectionData.fillBasicSongListStatus=true;
    print("lets go 5 ");
    print(response.statusCode);
    return response.statusCode;
  }
  static Future<int> storeApiIelts() async{
    /*
    

    [
      [
        title,
        singer,
        imagelink
      ]
      ,
      [
        title,
        singer,
        imagelink
      ]
    ]
    */
   SongSectionData.audioType="Ielts";
      var response=await http.get(Uri.https(Helper.baseUrl,Helper.baseApi+"getBasicIeltsList")).timeout(
                                          const Duration(seconds: 13),
                      onTimeout: (){

                                          return http.Response("nope", 500);});
      List<dynamic> listBody=jsonDecode(response.body);
     itemPrepare1();
    for(int i=0;i<listBody.length;i++){
      List<dynamic> tempList=listBody[i];
      
         SongSectionData.titles?.add(tempList[1]);
      SongSectionData. singer?.add(tempList[2]);
       SongSectionData.imageLink?.add(tempList[3]);
       SongSectionData.getTitle?.add(tempList[4]);
      
    }
     SongSectionData.fillBasicSongListStatus=true;
    print("lets go 5 ");
    return response.statusCode;
  }


static Future<int> storeApiRec() async{
 
    audioType="Song";
      var response=await http.get(Uri.https(Helper.baseUrl,Helper.baseApi+"recomendSongList")).timeout(
                                          const Duration(seconds: 13),
                      onTimeout: (){

                                          return http.Response("nope", 500);});
      List<dynamic> listBody=jsonDecode(response.body);
     itemPrepare2();
    for(int i=0;i<listBody.length;i++){
      List<dynamic> tempList=listBody[i];
      SongSectionData. recTitles?.add(tempList[1]);
  SongSectionData.recSinger?.add(tempList[2]);
  SongSectionData.recImageLink?.add(tempList[3]);
  SongSectionData. recGetTitle?.add(tempList[4]);
       
      
    }
     SongSectionData.fillBasicSongListStatus=true;
    print("lets go 5 ");
    print(response.statusCode);
    return response.statusCode;
  }
  static Future<int> storeApiIeltsRec() async{
 
   SongSectionData.audioType="Ielts";
      var response=await http.get(Uri.https(Helper.baseUrl,Helper.baseApi+"recomendIeltsList")).timeout(
                                          const Duration(seconds: 13),
                      onTimeout: (){

                                          return http.Response("nope", 500);});
      List<dynamic> listBody=jsonDecode(response.body);
     itemPrepare2();
    for(int i=0;i<listBody.length;i++){
      List<dynamic> tempList=listBody[i];
      
      SongSectionData. recTitles?.add(tempList[1]);
  SongSectionData.recSinger?.add(tempList[2]);
  SongSectionData.recImageLink?.add(tempList[3]);
  SongSectionData. recGetTitle?.add(tempList[4]);
      
    }
     SongSectionData.fillBasicSongListStatus=true;
    print("lets go 5 ");
    return response.statusCode;
  }


}