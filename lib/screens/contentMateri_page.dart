import 'package:flutter/material.dart';
import 'package:tobaapp/controllers/dataMateri.dart';
import 'package:tobaapp/controllers/routes.dart';

class ContentMateri extends StatelessWidget {
  final Materi thisMaterial;
  String formatText(String input) {
  List<String> parts = input.split('//');
    String formattedText = '';

    for (var part in parts) {
      if (part.trim().isNotEmpty) {
        formattedText += '•  ${part.trim()}\n';
      }
    }

    return formattedText.trim();
  }
  const ContentMateri({super.key, required this.thisMaterial});

  @override
  Widget build(BuildContext context) {
    // Materi thisMaterial = materi;
    String title = thisMaterial.judulMateri;
    List<Isi> isi = thisMaterial.subJudul;

    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    Routes.tempContext = context;
    return WillPopScope(child:
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(title),
          leading: IconButton(onPressed: (){Routes.getBack();}, icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),),),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(child:
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                
                for (int i = 0; i < isi.length; i++)
                (isi[i].type=="tabel")
                ?Column(
                  children: [
                    for (int k = 0; k<isi[i].content.split("//").length;k++)
                        Container(
                          width: width,
                          color: (k%2==0)?Color(0xff07DDD1).withOpacity(0.5):Colors.white,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Expanded(child: SizedBox(width: width-40,
                            child: Center(child: Text(isi[i].content.split("//")[k].split(" - ")[0]),),)),

                            Expanded(child: SizedBox(width: width-40,
                            child: Center(child: Text(isi[i].content.split("//")[k].split(" - ")[1]),),)),
                          ]),
                        )
                  ],
                )
                : (isi[i].type == "paragraf")? SizedBox(width: width-60,
                child: Text(isi[i].content, textAlign: TextAlign.justify, style: TextStyle(fontFamily: 'Poppins'),),)
                :(isi[i].type == "title")? SizedBox(width: width-60,
                child: Text(isi[i].content, textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),),)
                : (isi[i].type == "image")? Container(
                  height: 200,
                  width: width,
                
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(isi[i].content, fit: BoxFit.cover,)),
                )
                : (isi[i].type == "li")? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int k = 0; k<isi[i].content.split("\n").length;k++)
                    Text('\t\t\t• ${isi[i].content.split("\n")[k]}', style: TextStyle(fontFamily: 'Poppins'),)
                  ],
                )
                :Text("tipe lain onprogress"),

                SizedBox(height: 50,),

              ],
            ),
          )
        ),
        
      ),
      onWillPop: ()async{Routes.getBack();return true;});
  }
}