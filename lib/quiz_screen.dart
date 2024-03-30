import 'package:flutter/material.dart';
import 'question.dart';
import 'score.dart';

enum Emotion { happy, mad }

const answers = [
  Emotion.mad,
  Emotion.mad,
  Emotion.happy,
  Emotion.happy,
  Emotion.mad,
  Emotion.mad,
  Emotion.mad,
  Emotion.happy,
];

class QuizScreen extends StatefulWidget {
  const QuizScreen({required this.title, super.key});

  final String title;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  bool _showScoreWidget = false;
  int _correctAnswers = 0;

  void _incrementCorrectAnswers() {
    _correctAnswers++;
  }

  void _showScore() {
    setState(() => _showScoreWidget = true);
  }

  void _startOver() {
    setState(() {
      _showScoreWidget = false;
      _correctAnswers = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _showScoreWidget
          ? Score(
              correctAnswers: _correctAnswers,
              onStartOver: _startOver,
            )
          : Question(
              incrementCorrectAnswers: _incrementCorrectAnswers,
              showScore: _showScore,
            ),
    );
  }
}
