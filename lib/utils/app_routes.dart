import 'package:flutter/material.dart';
import 'package:quiz_app/screen/home/view/home_screen.dart';
import 'package:quiz_app/screen/quiz/quiz_screen.dart';
import 'package:quiz_app/screen/result/result_screen.dart';
import 'package:quiz_app/screen/splash/splash_screen.dart';

Map<String , WidgetBuilder> app_routes={
  '/':(c1)=> const SplashScreen(),
  'home':(c1)=> const HomeScreen(),
  'quiz':(c1)=> const QuizScreen(),
  'result':(c1)=> const ResultScreen(),
};