class ResultModel{
  int? response_code;
  List<HomeModel>? homeList =[];

  ResultModel({this.homeList,this.response_code});

  factory ResultModel.mapToModel(Map m1){
    List l1 = m1['results'];
    return ResultModel(
      response_code: m1['response_code'],
      homeList: l1.map((e) => HomeModel.mapToModel(e)).toList()
    );
  }

}
class HomeModel {
  String? type, difficulty, category, question, correct_answer;
  List? incorrect_answers;

  HomeModel({this.type, this.difficulty, this.category, this.question,
      this.correct_answer, this.incorrect_answers});

  factory HomeModel.mapToModel(Map m1){
    return HomeModel(
        type: m1['type'],
        difficulty: m1['difficulty'],
        category: m1['category'],
        question: m1['question'],
        correct_answer: m1['correct_answer'],
        incorrect_answers: m1['incorrect_answers']);
  }
}

class quizModel {
  String? correct_answer,question;
  List? option;

  quizModel({this.question,this.correct_answer,this.option});

}