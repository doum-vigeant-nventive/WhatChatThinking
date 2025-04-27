import 'package:flutter/material.dart';
import 'package:what_chat_thinking/quiz_screen.dart';

class Score extends StatelessWidget {
  const Score({
    required this.correctAnswers,
    required this.onStartOver,
    super.key,
  });

  final int correctAnswers;
  final void Function() onStartOver;

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Terminé!",
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      "Ton score:",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "$correctAnswers / ${answers.length}",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              FilledButton(
                onPressed: onStartOver,
                child: const Text("Recommencer"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
