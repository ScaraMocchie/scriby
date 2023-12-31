import 'package:flutter/material.dart';
import 'package:tobagen2/controllers/songSectionData.dart';

  Card FavCard(String imageLink, String song, String singer) {
    return Card(
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
    );
  }