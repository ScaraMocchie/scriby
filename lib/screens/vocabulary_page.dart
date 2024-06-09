import 'package:flutter/material.dart';
import 'dart:math'; 
import 'package:tobaapp/controllers/dataMateri.dart';
import 'package:tobaapp/controllers/routes.dart';

class VocabularyPage extends StatefulWidget {
  VocabularyPage({super.key});

  @override
  State<VocabularyPage> createState() => _VocabularyPageState();
}

class _VocabularyPageState extends State<VocabularyPage> {
  int currentIndex = 0;
  late PageController _controller;
  bool isBack = true;
  double angle = 0;

  Materi thismateriVocab = DataMateri.materiVocab;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  void _flip() {
    setState(() {
      angle = (angle + pi) % (2 * pi);
    });
  }
  void nextPage() {
    if (currentIndex < thismateriVocab.vocab.length - 1) {
      setState(() {
        if(isBack == false){
          _flip();
        };
        currentIndex++;
        _controller.animateToPage(
          currentIndex,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    } else {
      Routes.getBack(); // Navigate back to home or another specified route
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    Routes.tempContext = context;
    return WillPopScope(
      onWillPop: () async {
        Routes.getBack();
        return true;
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 237, 237, 237),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Routes.getBack();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    DataMateri.judulVocab,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 15,
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: (width-40)*(currentIndex+1)/thismateriVocab.vocab.length,
                  
                  decoration: BoxDecoration(
                    gradient: LinearGradient(begin: Alignment.centerLeft, colors: 
                    [
                      const Color(0xff528DE7).withOpacity(0.95),
                      const Color(0xff20BCDA).withOpacity(0.95),
                      const Color(0xff1CC2D9).withOpacity(0.95),
                      const Color(0xff0FD3D5),
                      const Color(0xff0FD3D5)
                    ]),
                    borderRadius: BorderRadius.circular(10), // Sesuaikan radius border jika diperlukan
                  ),
                ),
              ),
            ),
            SizedBox(width: width-40,
            child: Text("Flip Card ${currentIndex+1}/${thismateriVocab.vocab.length}", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.6),
              fontSize: 16,
              letterSpacing: 1.5
            ),),),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: thismateriVocab.vocab.length,
                physics: NeverScrollableScrollPhysics(), // Disable swiping
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Flip card content
                        GestureDetector(
                onTap: _flip,
                child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: angle),
                    duration: Duration(seconds: 1),
                    builder: (BuildContext context, double val, __) {
                      //here we will change the isBack val so we can change the content of the card
                      if (val >= (pi / 2)) {
                        isBack = false;
                      } else {
                        isBack = true;
                      }
                      return (Transform(
                        //let's make the card flip by it's center
                        alignment: Alignment.center,
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.001)
                          ..rotateY(val),
                        child: Container(
                            width: 309,
                            height: 474,
                            child: isBack
                                ? Container(
                                    alignment: Alignment.center,
                                    height: height/3,
                                    width: width-40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Color(0xff15CAD7),
                                    ),
                                    child: SizedBox(width: width-60,
                                    child: Text(thismateriVocab.vocab[i][0],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontFamily: 'Poppins', fontSize: 30),),)
                                  ) //if it's back we will display here
                                : Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.identity()
                                      ..rotateY(
                                          pi), // it will flip horizontally the container
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: height/3,
                                      width: width-40,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: width/4,
                                            backgroundImage:  NetworkImage(thismateriVocab.vocab[i][2])
                                          ),
                                          SizedBox(height: 10,),
                                          SizedBox(width: width-60,
                                            child: 
                                            Text(thismateriVocab.vocab[i][1],
                                              style: TextStyle(fontFamily: 'Poppins', fontSize: 30),textAlign: TextAlign.center,),
                                          ),
                                        ],
                                      )
                                    ),
                                  ) //else we will display it here,
                            ),
                      ));
                    }),
              )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: nextPage,
                child: Container(
                  alignment: Alignment.center,
                  width: width,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff5974e9),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
