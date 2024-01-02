import 'package:http/http.dart' as http;
import 'dart:convert';
import 'httpHelp.dart';
class AccountData{
  static List avatarList = ['assets/images/avatars/Avatar01.svg', 'assets/images/avatars/Avatar03.svg', 'assets/images/avatars/Avatar04.svg', 'assets/images/avatars/Avatar05.svg', 'assets/images/avatars/Avatar06.svg', 'assets/images/avatars/Avatar07.svg', 'assets/images/avatars/Avatar08.svg', 'assets/images/avatars/Avatar09.svg', 'assets/images/avatars/Avatar10.svg', 'assets/images/avatars/Avatar11.svg', 'assets/images/avatars/Avatar12.svg', 'assets/images/avatars/Avatar13.svg', 'assets/images/avatars/Avatar14.svg', 'assets/images/avatars/Avatar15.svg', 'assets/images/avatars/Avatar16.svg', 'assets/images/avatars/Avatar17.svg', 'assets/images/avatars/Avatar18.svg', 'assets/images/avatars/Avatar19.svg', 'assets/images/avatars/Avatar20.svg', 'assets/images/avatars/Avatar21.svg'];
  static int avatarIndex = 1;
  //basic accound data
  static int? isPrem;
  static String? username;
  static int? userId;
  static String? email;
  static int? permissionStatus;
  static String? deadlinePermission;
  static int playedAudioToday=0;
 
  static String statusProfile="basic";//default
  static String pathProfile="";

  static int state=1; //when changed
  static int sendingScoreState=0; 
  //statistic data;
  static Map<String,dynamic>? weeklyStat;

  static int? weeklyProgress;
  static int? weeklyTarget;

  static int? points;
  static int? activeDays;
  static int? activeDaystreaks;
  static int? totalReplay;
  static int? playedSongs;
  static int? playedIelts;
  static int? weeklyProgresPercentage;
  static int selectedTarget = 20;
  
static Future<void> getData()async{
  var    response= await http.post(Uri.https(Helper.baseUrl,Helper.baseApi+"getMyData"),
                  body:AccountData.userId.toString());
                  var data=jsonDecode(response.body);
                  
                  AccountData.weeklyTarget=data[0];
                  AccountData.weeklyProgress=data[1];
                  AccountData.weeklyStat=jsonDecode(data[2]);
  
                  AccountData.weeklyProgresPercentage=(((AccountData.weeklyProgress!/AccountData.weeklyTarget!)*100).round());
                  if(AccountData.weeklyProgresPercentage!>100){
                    AccountData.weeklyProgresPercentage=100;
                  }
                  AccountData.activeDays=data[3];
                AccountData.activeDaystreaks=data[4];
                    AccountData.points=data[5];
                    AccountData.playedSongs=data[6];
                AccountData.playedIelts=data[7];
                AccountData.totalReplay=data[8];
                 AccountData.state=0;
}
  static Future<void> getProfile()async{
     var    response= await http.post(Uri.https(Helper.baseUrl,Helper.baseApi+"getImageProfile"),
                  body:jsonEncode([AccountData.userId]));
                  var data=jsonDecode(response.body);
                  String type=data["type"];

                  AccountData.statusProfile=type;
                    //default
                    if(AccountData.statusProfile=="basic"){
                          AccountData. avatarIndex=data["path"];
                    }else{
                      AccountData.pathProfile=data["path"];
                    }
                  

  }
  static Future<void> updateProfileBasic()async{
     var    response= await http.post(Uri.https(Helper.baseUrl,Helper.baseApi+"updatePhoto"),
                  body:jsonEncode([AccountData.userId,jsonEncode({"type":"basic","path":AccountData.avatarIndex})]));
                
                  

  }
}