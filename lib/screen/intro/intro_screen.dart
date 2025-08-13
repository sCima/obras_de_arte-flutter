import 'package:flutter/material.dart';
import 'package:obras_de_arte/routes.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  final List<Map<String, String>> _pages = [
    {
      'titulo': 'Palmeiras',
      'subtitulo': 'É grande',
      'lottie': 'assets/lottie/intro1.json',
    },
    {
      'titulo': 'Cortinas',
      'subtitulo': 'É minúsculo kkkkkkkkkkkkk',
      'lottie': 'assets/lottie/intro2.json',
    },
    {
      'titulo': 'Palmeiras',
      'subtitulo': 'Pai do Cortinas',
      'lottie': 'assets/lottie/intro3.json',
    },
  ];
  void _finishIntro() {
    Navigator.pushReplacementNamed(context, Routes.home);
  }

  void _onNext() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      _finishIntro();
    }
  }

  void _onBack() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _dontShowAgain = false;

  @override
  Widget build(BuildContext context) {
    final isLastPage = _currentPage == _pages.length - 1;
    return const Placeholder();
  }
}
