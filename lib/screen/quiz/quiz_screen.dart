import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screen/home/controller/home_controller.dart';
import 'package:quiz_app/utils/app_color.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    controller.timeSpam();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image.network("https://img.freepik.com/free-photo/abstract-uv-ultraviolet-light-composition_23-2149243965.jpg",
          // height: MediaQuery.sizeOf(context).height,
          // width: MediaQuery.sizeOf(context).width,
          // fit: BoxFit.cover,),
          Container(
            height: 400,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
          ),
          Column(
            children: [
              const SizedBox(height: 70),
              const Text(
                "Quiz Time",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 70,
              ),
              Obx(() => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 2)
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Obx(
                              () => Transform.scale(
                                scale: 2.8,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: CircularProgressIndicator(
                                        value: controller.time / 20,
                                        color: const Color(0xff72aeb6),
                                        strokeCap: StrokeCap.round,
                                        strokeWidth: 2,
                                        backgroundColor: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      "${controller.time.value}",
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 50),
                            Text(
                              "Question :- ${controller.index.value + 1}",
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text(
                                "${controller.quizList[controller.index.value].question}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              )),
                            ),
                          ],
                        )),
                  )),
              const SizedBox(height: 20),
              Obx(
                () => InkWell(
                  onTap: () {
                    if (controller.index.value !=
                        controller.quizList.length - 1) {
                      controller.selected = controller
                          .quizList[controller.index.value].option![0];
                      controller.result();
                      controller.time.value = 20;
                      controller.index.value = controller.index.value + 1;
                    } else {
                      Get.offAllNamed('result');
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                    child: Center(
                        child: Text(
                      "A) ${controller.quizList[controller.index.value].option![0]}",
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    )),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => InkWell(
                  onTap: () {
                    if (controller.index.value !=
                        controller.quizList.length - 1) {
                      controller.selected = controller
                          .quizList[controller.index.value].option![1];
                      controller.result();
                      controller.time.value = 20;
                      controller.index.value = controller.index.value + 1;
                    } else {
                      Get.offAllNamed('result');
                    }
                  },
                  child: Container(
                      height: 50,
                      width: 200,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 2)
                          ]),
                      child: Center(
                          child: Text(
                        "B) ${controller.quizList[controller.index.value].option![1]}",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ))),
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => InkWell(
                  onTap: () {
                    if (controller.index.value !=
                        controller.quizList.length - 1) {
                      controller.selected = controller
                          .quizList[controller.index.value].option![2];
                      controller.result();
                      controller.time.value = 20;
                      controller.index.value = controller.index.value + 1;
                    } else {
                      Get.offAllNamed('result');
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                    child: Center(
                        child: Text(
                      "C) ${controller.quizList[controller.index.value].option![2]}",
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    )),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => InkWell(
                  onTap: () {
                    if (controller.index.value !=
                        controller.quizList.length - 1) {
                      controller.selected = controller
                          .quizList[controller.index.value].option![3];
                      controller.result();
                      controller.time.value = 20;
                      controller.index.value = controller.index.value + 1;
                    } else {
                      Get.offAllNamed('result');
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ]),
                    child: Center(
                        child: Text(
                      "D) ${controller.quizList[controller.index.value].option![3]}",
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
