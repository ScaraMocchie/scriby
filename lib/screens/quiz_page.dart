import 'package:flutter/material.dart';
import 'package:tobaapp/controllers/accountMessage.dart';
import 'package:tobaapp/controllers/dataMateri.dart';
import 'package:tobaapp/controllers/quizData.dart';
import 'package:tobaapp/controllers/routes.dart';
import 'package:tobaapp/screens/grade_page2.dart';

class QuizPage extends StatefulWidget {
  QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int benar = 0;
  int currentIndex = 0;
  late PageController _controller;
  bool statusCheck = false;
  int selectedAnswer = -1;

  List<Quizz> quiz = (DataMateri.materialType == "Modals")? quizModals
                      :(DataMateri.materialType == "Tenses")? quizTenses
                      : quizAdjadv;

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

  void checkAnswer() {
    setState(() {
      statusCheck = true;
    });
  }

  void nextPage() {
    if (currentIndex < quiz.length - 1) {
      setState(() {
        currentIndex++;
        statusCheck = false;
        selectedAnswer = -1;
        _controller.animateToPage(
          currentIndex,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    } else {
      print(benar/quiz.length);
      Navigator.push(context,  MaterialPageRoute(builder: (context) => GradePage2(nilai: benar/quiz.length,))); // Navigate back to home or another specified route
    }
  }

  void selectAnswer(int index) {
    setState(() {
      selectedAnswer = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    Routes.tempContext = context;
    return WillPopScope(
      onWillPop:()async{
      showLoadingDialogQuit(context);
      return true;},
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
                      showLoadingDialogQuit(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Quiz",
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
                  width: (width-40)*(currentIndex+1)/quiz.length,
                  
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
            child: Text("Question ${currentIndex+1}/${quiz.length}", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.6),
              fontSize: 16,
              letterSpacing: 1.5
            ),),),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: quiz.length,
                physics: NeverScrollableScrollPhysics(), // Disable swiping
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                    statusCheck = false;
                    selectedAnswer = -1;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Container progress
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 60),
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // warna bayangan
                              spreadRadius: 5, // sebaran bayangan
                              blurRadius: 7, // kekaburan bayangan
                              offset: Offset(0, 3), // posisi bayangan (x, y)
                            ),
      ],
                          ),
                          child: Text(
                          quiz[i].quest,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        ),
                        SizedBox(height: 20),
                        ...quiz[i].options.map((option) {
                          int optionIndex = quiz[i].options.indexOf(option);
                          bool isCorrect = optionIndex == quiz[i].answer;
                          bool isSelected = optionIndex == selectedAnswer;
                          FontWeight thisFW = FontWeight.normal;
                          Color borderColor = Colors.grey;
                          Color bgColor = Colors.white;
                          Color textColor = Colors.black;
                        
    
                          if (statusCheck) {
                            if (isSelected) {
                              borderColor = isCorrect ? Colors.green : Colors.red;
                              bgColor = isCorrect ? Colors.green.withOpacity(0.3):Colors.red.withOpacity(0.3);
                              (isCorrect)? benar+=1:benar+=0;
                            } else if (isCorrect) {
                              borderColor = Colors.green;
                              bgColor = Colors.green.withOpacity(0.3);
                              // print("Benarrr");
                            }
                          } else {
                            if (isSelected) {
                              textColor = Color(0xff5974e9);
                              bgColor = Color(0xff389fe3).withOpacity(0.3);
                              borderColor = Color(0xff389fe3);
                              thisFW = FontWeight.bold;
                            }
                          }
    
                          return GestureDetector(
                            onTap: () {
                              if (!statusCheck) {
                                selectAnswer(optionIndex);
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.symmetric(vertical: 5),
                              width: width,
                              decoration: BoxDecoration(
                                color: bgColor,
                                border: Border.all(color: borderColor, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(option, style: TextStyle(fontWeight: thisFW, color: textColor),),
                            ),
                          );
                        }).toList(),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                    onTap: statusCheck
                        ? nextPage
                        : (selectedAnswer == -1 ? null : checkAnswer),
                    child: Opacity(
                      opacity: (statusCheck || selectedAnswer != -1) ? 1.0 : 0.5,
                      child: Container(
                        alignment: Alignment.center,
                        width: width,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff5974e9)
                        ),
                        child: Text(statusCheck ? 'Next' : 'Check', style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18
                        ),),
                      ),
                    )
                  )
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}