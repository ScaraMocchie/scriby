import 'package:flutter/material.dart';
import 'package:tobaapp/controllers/dataMateri.dart';
import 'package:tobaapp/controllers/routes.dart';
import 'package:tobaapp/screens/contentMateri_page.dart';
import 'package:tobaapp/screens/quiz_page.dart';

Widget MaterialCard(String imageLink, String title, BuildContext context, int index, String type){
  Routes.tempContext = context;
  return InkWell(
    onTap: () {
      // tenses
      (DataMateri.materialType == "Tenses" && title!="Quiz")?Routes.newPut("detailMateri", ContentMateri(thisMaterial: DataMateri.tensesMaterials[index]))
      :(DataMateri.materialType == "Tenses" && title=="Quiz")?Routes.put("quiz")
      // modals
      :(DataMateri.materialType == "Modals" && title!="Quiz")?Routes.newPut("detailMateri", ContentMateri(thisMaterial: DataMateri.modalsMaterials[index]))
      :(DataMateri.materialType == "Modals" && title=="Quiz")?Routes.put("quiz")

      // adj
      :(DataMateri.materialType == "Adverbs & Adjective" && title!="Quiz")?Routes.newPut("detailMateri", ContentMateri(thisMaterial: DataMateri.adjadvMaterials[index]))
      :(DataMateri.materialType == "Adverbs & Adjective" && title=="Quiz")?Routes.put("quiz")
      :(DataMateri.judulVocab = title, DataMateri.materiVocab = DataMateri.vocabMaterials[index], Routes.put("vocabPage"));
    },
    child: Card(
      elevation: 5,
      margin: EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            (imageLink != "no")?
            CircleAvatar(
              radius: 25,
              backgroundImage:  NetworkImage(imageLink)
          
            ):(DataMateri.materialType == "Vocabulary")?CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/images/vocab_icon.png")
          
            ):(DataMateri.materialType == "Modals")?CircleAvatar(
              radius: 25, backgroundImage: AssetImage("assets/images/modals.png"))

             :(DataMateri.materialType == "Tenses")?CircleAvatar(
              radius: 25, backgroundImage: AssetImage("assets/images/tenses.png"))

             :CircleAvatar(
              radius: 25, backgroundImage: AssetImage("assets/images/Adv_adj.png")),

            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                
              ],
            )
          ],
        ),
      ]),
    ),
  ),
  );
}