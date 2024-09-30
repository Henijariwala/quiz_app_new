import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/utils/app_color.dart';

import '../controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());


  @override
  void initState() {
    controller.quizApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff0085F8),
      backgroundColor: blue,
      appBar: AppBar(
        backgroundColor: blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 100,),
          Stack(
            children: [
              Center(child: Image.asset("assets/image/bg_logo.webp"))
            ],
          ),
          const SizedBox(height: 200,),
          InkWell(
            onTap: () {
              Get.offAllNamed('quiz');
            },
              child: Image.asset("assets/image/start.png",width: 100,height: 100,fit: BoxFit.cover,))
        ],
      )
    );
  }
}
