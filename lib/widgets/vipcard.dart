import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tobagen2/controllers/accountData.dart';

Container VIPCard(double width, String vipStat) {
    return Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 170,
              width: width,
              decoration: BoxDecoration(
                color: const Color(0xff528DE7).withOpacity(0.8),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
        CircleAvatar(
          backgroundColor: Color.fromARGB(255, 34, 143, 231),
          child: SvgPicture.asset(
            AccountData.avatarList[AccountData.avatarIndex],
            width: 80,
          ),
          radius: 45,
        ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(width: width-40-20-110, child: Text(AccountData.username!, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),),
                          SizedBox(height: 10,),

                          Container(width: width-40-20-110, child: Text("Your "+ vipStat+" last until:", overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 16),),),
                          Container(width: width-40-20-110, child: Text(AccountData.deadlinePermission!, overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white),),),
                        ],
                      )
                ],
              ),
            );
  }