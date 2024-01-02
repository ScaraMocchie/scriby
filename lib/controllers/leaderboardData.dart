import 'package:http/http.dart' as http;
import 'dart:convert';
import '../controllers/accountData.dart';
import 'httpHelp.dart';
class LeaderboardData{
  static int tempdefaultid=AccountData.userId!;
  static int? tempdefaultscores;
  static String? tempdefaultusernames;
  static int? tempdefaultuserposition;
  static List<int>? scores;
  static List<String>? usernames;
  static List<int>? userId;
  static List<int>? profileIndex;
  static int lengths=21;
  static Future<void>? getData() async{
    var response= await http.get(Uri.https(Helper.baseUrl,Helper.baseApi+"giveTop20"));
    scores=[];
    usernames=[];
    userId=[];
    profileIndex=[];
    var data=jsonDecode(response.body);
    
  //  print(data.length);
  print(data);
    for(int x=0;x<data.length;x++){
      profileIndex!.add(jsonDecode(data[x][3])["path"]);
      scores!.add(data[x][2]);
      usernames!.add(data[x][1]);
      userId!.add(data[x][0]);
    //  print("x= ${x}  ${data[x]}");
    //  print("datax ");
    }
    if(data.length<21){
      lengths=data.length;
    }
    response= await http.post(Uri.https(Helper.baseUrl,Helper.baseApi+"giveWhereAmI"),body:tempdefaultid.toString());
    data=jsonDecode(response.body);
tempdefaultscores=data[2];
tempdefaultusernames=data[1];
  tempdefaultuserposition=data[3];

  }





}