# Steps

*may need to change compileSdk to 34 in android/app/build.gradle*

## Introduction

01. Show assets folder
02. Show pubspec.yaml
03. [main] 01 - Starter main without comments
    - Removed the comments
04. [main] Change title
05. [main] Change color

## General Question UI

06. [main] Rename MyHomePage to QuizScreen
07. [main] Yeet QuizScreen in its own file
08. [QuizScreen] 02 - Virgin QuizScreen
    - Removed everything so only title is present
09. [QuizScreen] 03 - QuizScreen column
    - Base of the UI
10. [QuizScreen] 04 - Image.asset
    - Switch grey Container for Image
11. [QuizScreen] Add spacing 16 to Column and Row (can talk about SizedBox)
12. [QuizScreen] Wrap buttons with expanded
13. [QuizScreen] Wrap image with expanded
14. [QuizScreen] Wrap Column with Padding 16
15. [QuizScreen] Add CrossAxisAlignment.stretch to Column
16. [QuizScreen] 05 - ClipRRect
    - Round the image corners
17. [QuizScreen] Extract body to Question widget
18. [QuizScreen] Yeet Question to its own file
19. [Question] Convert to StatefulWidget (explain Stateless vs Stateful)

## Emotions

20. [QuizScreen] 06 - Emotions
    - Add dummy emotions
21. [Question] 07 - _incrementCounter()
    - Method to increment counter
    - Import answers
22. [Question] Use _incrementCounter in buttons
23. [Question] 08 - _selectAnswer()
    - Add answer selection, set and reset button color
    - Explain _selectAnswer, _setButtonColor, _resetButtonColor, button onPressed and style
    - Oh no button color doesn't work!!
24. [Question] 09 - Future.delayed
    - Adding Future to show colour

## General Score UI

25. [QuizScreen] 10 - Score
    - Added general Score layout
    - Show Text style
    - Show SizedBox
    - Explain Expanded
26. [QuizScreen] Extract body to Score widget
27. [QuizScreen] Yeet Score to its own file

## Showing Score

28. [QuizScreen] 11 - _showScoreWidget
    - Ternary operator to show Question or Score
29. [Question] 12 - widget.showScore()
    - Adding parameter to ctor
    - Using widget.showScore() in _incrementCounter()
30. [QuizScreen] Pass _showScore to Question
    - May need to hot restart

## Start over

31. [Score] 13 - onStartOver()
    - Adding parameter ton ctor
32. [QuizScreen] 14 -_startOver
    - Pass _startOver to Score

## Increment correct answers

33. [Question] 15 - incrementCorrectAnswers()
    - Adding parameter on ctor
    - Using incrementCorrectAnswers() in _selectAnswer()
34. [QuizScreen] 16 - _incrementCorrectAnswers
    - Increment _correctAnswers
    - Passing _incrementCorrectAnswers to Question
    - Setting _correctAnswers to 0 in _startOver()

## Show correct answers in Score

35. [Score] Add correctAnswers as ctor parameter
36. [Score] Use correctAnswers in string
37. [QuizScreen] Pass down _correctAnswers to Score
38. [Score] Use answers.length in string

## Show images

39. [Question] Use "assets/rafiki-$_counter.jpg"
40. [QuizScreen] 17 - answers
    - Change answers array to real answers
41. [pubspec] 18 - pubspec
    - Commandes pour splash screen et launcher icon
    - Mettre en dessous de dependencies
