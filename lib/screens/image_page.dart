import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../controllers/accountData.dart';
import '../controllers/routes.dart';
import '../screens/accountPage.dart';

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
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
  List<bool> selectedImages = List.generate(AccountData.avatarList.length, (index) => false);
  int selectedImageIndex = AccountData.avatarIndex;
  @override
  Widget build(BuildContext context) {
    Routes.tempContext=context;
    return WillPopScope(child: Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){Routes.getBack();}, icon: Icon(Icons.arrow_back_ios_new_rounded)),centerTitle: true, title: Text("Select an image"),),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: AccountData.avatarList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedImageIndex= index;
              });

              print('Image at index $index selected');
            },
            child: Card(
              color: selectedImageIndex == index ?  Color.fromARGB(255, 187, 254, 255): null,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AccountData.avatarList[index],
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                  Text('Avatar '+ (index+1).toString()),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff528DE7),
        onPressed: () async{
          // Perform the action when the confirm button is clicked
          print('Selected avatar index: $selectedImageIndex');
          AccountData.avatarIndex = selectedImageIndex;
          showLoadingDialog(context);
          await AccountData.updateProfileBasic();
          // Routes.tempContext=context;
          Routes.getBack();
        },
        child: Icon(Icons.check, color: Colors.white,),
      ),
    ), onWillPop: ()async{
      Routes.getBack();
      return true;});
  }
}