import 'package:flutter/material.dart';
import '../controllers/songSectionData.dart';
import '../screens/song_ans_page.dart';
import '../widgets/songlevel.dart';
import '../controllers/startSongQuiz.dart';
import '../screens/songsection.dart';
  Widget FavCard(String imageLink, String song, String singer,String getTitle,BuildContext context) {
    void showLoadingDialog(BuildContext context) {
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
    return InkWell(
    onTap:
    
    ()async{
       StartSong.player1Receive=0;
    StartSong.player2Receive=0;
    StartSong.player3Receive=0;
    showLoadingDialog(context);
      String difficulty = Level.level;
      if(SongSectionData.audioType=="Ielts"){difficulty="ielts"+difficulty;}
         StartSong.getBlobData2(getTitle,difficulty,song,singer,imageLink);
         print("status 1");
        await StartSong.getStatus1(context);
        print("status 1 end");
    },child:Card(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10), // Image border
            child: SizedBox.fromSize(
              size: const Size.fromRadius(50), // Image radius
              child: (SongSectionData.audioType!="Ielts")?Image.network(
                  imageLink,
                  fit: BoxFit.cover)
                  :Image(image: AssetImage("assets/images/ieltHome.png"), fit: BoxFit.cover,),
            ),
          ),
          SizedBox(
            width: 100,
            child: Text(
              song,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 100,
            child: Text(singer, overflow: TextOverflow.ellipsis,)),
        ],
      ),
    ));
  }