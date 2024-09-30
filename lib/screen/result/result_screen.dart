import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/utils/app_color.dart';
import '../home/controller/home_controller.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      //backgroundColor: Color(0xffFCE057),
      body: Column(
        children: [
          const SizedBox(height: 100,),
          Image.asset("assets/image/logo_quiz1.png",),
          const SizedBox(height: 100,),
          Center(
            child: Text("${controller.point.value}/${controller.quizList.length}",style: const TextStyle(
              color: Colors.black,
              fontSize: 40
            ),),
          ),
          const Text("Your Score ......!!!!!!!!!",style: TextStyle(
            color: Colors.black, fontSize: 20),),
          const SizedBox(height: 180,),
          InkWell(
            onTap: () {
              controller.point.value=0;
              controller.index.value=0;
              controller.quizList.value =[];
              Get.offAllNamed('home');
            },
              child: Image.asset("assets/image/replay.png",height: 100,width: 100,fit: BoxFit.cover,))
        ],
      ),
    );
  }
}
