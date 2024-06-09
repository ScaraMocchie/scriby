import 'package:flutter/material.dart';
import 'package:tobaapp/controllers/dataMateri.dart';
import 'package:tobaapp/controllers/routes.dart';
import 'package:tobaapp/widgets/matrialCard.dart';

class MaterialsPage extends StatefulWidget {
  const MaterialsPage({super.key});

  @override
  State<MaterialsPage> createState() => _MaterialsPageState();
}

class _MaterialsPageState extends State<MaterialsPage> {
  String pageName = "MaterialsPage";
  List<Materi> displayedMaterials =
    (DataMateri.materialType == "Vocabulary")?DataMateri.vocabMaterials
    : (DataMateri.materialType == "Tenses")? DataMateri.tensesMaterials
    : (DataMateri.materialType == "Modals")? DataMateri.modalsMaterials
    : DataMateri.adjadvMaterials;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    Routes.tempContext=context; 

    return
    WillPopScope(
      child: Scaffold(
        backgroundColor: Color(0xffE8E8E8),
        body: SizedBox(
          height: height,
          child: SingleChildScrollView(
            child: Container(
              width: width,
              height: height,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                    Color(0xff15CAD7),
                    Color(0xffE8E8E8),
                    Color(0xffE8E8E8)
                  ])),
              child: Padding(padding:
              (height >= 840)
              ? EdgeInsets.only(
                  top: 0.04 * height,
                  left: 0.05 * width,
                  right: 0.05 * width)
              : EdgeInsets.only(
                  top: 0.03 * height,
                  left: 0.072 * width,
                  right: 0.072 * width),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      IconButton(onPressed: (){Routes.getBack();}, icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),),
                      Text(DataMateri.materialType!,
                        style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
                    ],
                  ),
                  // SizedBox(height: 10,),
                  // TextField(
                  //   onChanged: (value){},
                  //   textInputAction: TextInputAction.search,
                  //   autofocus: false,
                  //   onSubmitted: (value) {
                  //     print("search");
                  //   },
                  //   decoration: InputDecoration(
                  //       filled: true,
                  //       fillColor: Colors.white,
                  //       contentPadding:
                  //           const EdgeInsets.only(left: 30),
                  //       hintText: "Search",
                  //       hintStyle: const TextStyle(height: 2),
                  //       suffixIcon: IconButton(
                  //         icon: const Icon(Icons.search),
                  //         onPressed: () {},
                  //       ),
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //           borderSide: BorderSide.none)),
                  // ),
                  // SizedBox(height: 20,),
    
                  Expanded(child: 
                  ListView.builder(
                    itemCount: displayedMaterials.length,
                    itemBuilder: (context, index) {
                      var data = displayedMaterials[index];
                      return MaterialCard(data.image, data.judulMateri, context, index, DataMateri.materialType!);
                    },
                  ))
                ]
              ),
              ),
            ),
          ),
        )
      ),
      onWillPop: ()async{Routes.getBack();return true;}
    );
  }
}