class Quizz{
  final String quest;
  final int answer;
  List<String> options;
  Quizz({required this.quest, required this.answer, required this.options});
}

List<Quizz> quizTenses = [
    Quizz(quest: 'Which tense is correct for the sentence: "I ____ (run) every morning."', answer: 2, options: ['a. will run', 'b. ran', 'c. run', 'd. have run']),
    Quizz(quest: '"When I arrived, they ____ (watching) TV."', answer: 1, options: ['a. watched', 'b. were watching', 'c. had watched', 'd. will watch']),
    Quizz(quest: '"He ____ (lived) in New York for 5 years before moving to Los Angeles."', answer: 0, options: ['a. had lived', 'b. has lived', 'c. lives', 'd. will live']),
    Quizz(quest: '"By the end of this year, I ____ (working) at this company for 10 years."', answer: 0, options: ['a. will have been working', 'b. worked', 'c. had worked', 'd. have worked']),
    Quizz(quest: '"Tomorrow, they ____ (go) to the beach."', answer: 0, options: ['a. will go', 'b. went', 'c. go', 'd. had gone'])
];

List<Quizz> quizModals =[
    Quizz(quest: 'Which modal verb expresses possibility in the present tense?', answer: 1, options: ['a. Can', 'b. May', 'c. Must', 'd. Will']),
    Quizz(quest: 'Choose the correct modal verb for "I ____ speak French when I was a child."', answer: 1, options: ['a. can', 'b. could', 'c. may', 'd. would']),
    Quizz(quest: '"You ____ park your car here." (Negative form for expressing prohibition)', answer: 2, options: ['a. can\'t', 'b. may not', 'c. must not', 'd. wouldn\'t']),
    Quizz(quest: '"I ____ help you with your homework tonight." (Expressing willingness in the future)', answer: 0, options: ['a. will', 'b. would', 'c. should', 'd. might']),
    Quizz(quest: '"He ____ have studied harder for the exam." (Expressing something that should have been done)', answer: 2, options: ['a. must', 'b. may', 'c. should have', 'd. could have'])
];

List<Quizz> quizAdjadv = [
  Quizz(quest: 'Manakah kata yang merupakan adjective dalam kalimat: "The quick brown fox jumps over the lazy dog."?', answer: 0, options: ['a. quick', 'b. jumps', 'c. over', 'd. lazy']),
  Quizz(quest: 'Lengkapilah kalimat berikut dengan adverb yang tepat: "She spoke _____ during the meeting."', answer: 1, options: ['a. patient', 'b. patiently', 'c. patience', 'd. patiences']),
  Quizz(quest: 'Kata manakah yang merupakan adverb dalam kalimat: “The student answered the question correctly.”?', answer: 3, options: ['a. student', 'b. answered', 'c. question', 'd. correctly']),
  Quizz(quest: 'Manakah kata yang merupakan adjective dalam kalimat: "The delicious cake was made by my mom."', answer: 0, options: ['a. delicious', 'b. was', 'c. made', 'd. by']),
  Quizz(quest: 'Lengkapilah kalimat berikut dengan adjective yang tepat: "The _____ sunset was breathtaking."', answer: 1, options: ['a. beauty', 'b. beautiful', 'c. beautifully', 'd. beautified']),
];

