class Quizz{
  final String quest;
  final int answer;
  List<String> options;
  Quizz({required this.quest, required this.answer, required this.options});
}

List<Quizz> quizTenses = [
  Quizz(quest: 'Which tense is correct for the sentence: \n"I ____ every morning."', answer: 2, options: ['a. will run', 'b. ran','c. run','d. have run']),
  Quizz(quest: '"When I arrived, they ____ watching TV"', answer: 1, options: ['a. watched','b. were watching', 'c. had watched','d. will watch'])
];

List<Quizz> quizModals = [Quizz(quest: 'Cuma contoh"', answer: 2, options: ['a. will run', 'b. ran','c. run','d. have run']),];

List<Quizz> quizAdjadv = [
  Quizz(quest: 'Cuma contoh"', answer: 2, options: ['a. will run', 'b. ran','c. run','d. have run'])
];
