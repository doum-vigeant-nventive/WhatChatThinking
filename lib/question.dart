import 'package:flutter/material.dart';
import 'package:what_chat_thinking/quiz_screen.dart';

class Question extends StatefulWidget {
  const Question({
    required this.incrementCorrectAnswers,
    required this.showScore,
    super.key,
  });

  final Function incrementCorrectAnswers;
  final Function showScore;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int _counter = 0;
  Color? _happyButtonColor;
  Color? _madButtonColor;

  Future<void> _selectAnswer(Emotion answer) async {
    final selectedRightAnswer = answers[_counter] == answer;
    if (selectedRightAnswer) widget.incrementCorrectAnswers();

    _setButtonColor(answer, selectedRightAnswer);
    await Future.delayed(const Duration(milliseconds: 500));
    _resetButtonColor(answer);
    _incrementCounter();
  }

  void _setButtonColor(Emotion answer, bool selectedRightAnswer) {
    final color = selectedRightAnswer ? Colors.green : Colors.red;
    if (answer == Emotion.happy) {
      setState(() => _happyButtonColor = color);
    } else {
      setState(() => _madButtonColor = color);
    }
  }

  void _resetButtonColor(Emotion answer) {
    if (answer == Emotion.happy) {
      setState(() => _happyButtonColor = null);
    } else {
      setState(() => _madButtonColor = null);
    }
  }

  void _incrementCounter() {
    final counter = _counter + 1;
    if (_counter < answers.length - 1) {
      setState(() => _counter = counter);
    } else {
      widget.showScore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/rafiki-$_counter.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: () async {
                        await _selectAnswer(Emotion.happy);
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: _happyButtonColor,
                      ),
                      child: const Text("Content 😁"),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: FilledButton(
                      onPressed: () async {
                        await _selectAnswer(Emotion.mad);
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: _madButtonColor,
                      ),
                      child: const Text("Fâché 😠"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
