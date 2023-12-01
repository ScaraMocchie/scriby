import 'package:flutter/material.dart';
import '../controllers/accountData.dart';
class AchievementCard extends StatefulWidget {
   AchievementCard({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  State<AchievementCard> createState() => _AchievementCardState();
}

class _AchievementCardState extends State<AchievementCard> {
  /*
    static int? points;
  static int? activeDays;
  static int? activeDaystreaks;
  static int? totalReplay;
  static int? playedSongs;
  static int? playedIelts;
  */ 
   int activeDays = AccountData.activeDays!;
   int activeStreak = AccountData.activeDaystreaks!;
   int points = AccountData.points!;
   double averageReplay =  double.parse((AccountData.totalReplay!/(AccountData.playedSongs!+AccountData.playedIelts!)).toStringAsFixed(2));
   //double.parse((12.3412).toStringAsFixed(2))
   int playedSong = AccountData.playedSongs!;
   int playeDialogue = AccountData.playedIelts!;

  @override
  Widget build(BuildContext context) {
    var height = widget.height;
    var width = widget.width;
    // final double Yay = AchievementCard.height;
    return Container(
      height: (height > 850) ?(height * 140 / 800):(height * 140 / 800)+45,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AchivItems(activeDays.toString(), "Active Days"),
              AchivItems(activeStreak.toString(), "Highest Active Days Streak"),
              AchivItems(points.toString(), "Highest points"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AchivItems(averageReplay.toString(), "Average Replays"),
              AchivItems(playedSong.toString(), "Played Song"),
              AchivItems(playeDialogue.toString(), "Played Dialogue"),
            ],
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }

  SizedBox AchivItems(String data, String name) {
    return SizedBox(
      width: 95,
      child: Column(
        children: [
          Text(
            data.toString(),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, height: 1),
          )
        ],
      ),
    );
  }
}
