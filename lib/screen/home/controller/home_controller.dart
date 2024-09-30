import 'dart:async';

import 'package:get/get.dart';
import 'package:quiz_app/screen/home/model/home_model.dart';
import 'package:quiz_app/utils/helper/api_helper.dart';

class HomeController extends GetxController{

  Rxn<ResultModel> model = Rxn();
  RxList<quizModel> quizList = <quizModel>[].obs;
  RxInt index = 0.obs;
  RxInt point = 0.obs;
  String? selected;
  RxInt time =20.obs;
  Timer? timer;

  Future<void> quizApi() async {
    ResultModel? h1 = await APIHelper.helper.getData();

    model.value=h1;

    if(model.value != null){
      List<quizModel> q1 =[];
      for(HomeModel x in model.value!.homeList!){
        List allOption = x.incorrect_answers!;
        allOption.add(x.correct_answer);
        print("==========${x.question} -> ${x.correct_answer}");
        allOption.shuffle();
        
        quizModel q2 = quizModel(
          question: x.question,
          correct_answer: x.correct_answer,
          option: allOption
        );
        q1.add(q2);
      }
      quizList.value = q1;
    }
  }

  void result(){
   if(quizList[index.value].correct_answer != selected ){
     print("=================================== point 1 = ${point}");

     point.value ++;
    print("=================================== point 2 = ${point}");
   }
  }

  void timeSpam(){
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if(time > 0 && index.value != quizList.length){
        time.value --;
      }else{
        if(index.value != quizList.length-1){
          index.value++;
        }else{
          Get.offAllNamed('result');
        }
        time.value =20;
      }
      print("$time");
    },);
  }
}