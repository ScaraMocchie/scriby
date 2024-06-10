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
  Quizz(quest: 'Cuma contoh"', answer: 2, options: ['a. will run', 'b. ran','c. run','d. have run'])
];
