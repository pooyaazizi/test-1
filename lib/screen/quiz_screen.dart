import 'package:flutter/material.dart';
import 'package:quiz_application/constants/constants.dart';
import 'package:quiz_application/data/question.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuestionList();
  int shownQuestion = 0;
  int correctAnswer = 0;
  int wrongAnswer = 0;
  int noAnswer = 0;
  bool isSelectedAnswer = false;
  bool isLastQuestion = false;
  bool isRejectButton = false;
  int? selectedAnswerIndex = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _getAppBar(), body: _getQuizScreenBody());
  }

  Widget _getQuizScreenBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [_getQuestionsWidget()]),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      title: Text(
        'سوال ${shownQuestion + 1} از ${questionList.length}',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.indigo[700],
      foregroundColor: Colors.white,
    );
  }

  Widget _getQuestionsWidget() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Image(image: AssetImage('images/1.png')),
        ),

        SizedBox(height: 20),

        Container(
          margin: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Text(
            '${questionList[shownQuestion].questionTitle}',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20),
        ...List.generate(4, (index) => _getOptionItem(index)),
        SizedBox(height: 20),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo[700],
            foregroundColor: Colors.white,
            minimumSize: Size(250, 40),
          ),
          onPressed: () {
            setState(() {
              if (!isSelectedAnswer && !isLastQuestion) {
                noAnswer++;
              }
              if (shownQuestion == getQuestionList().length - 1) {
                isRejectButton = false;
                isLastQuestion = true;
                return;
              }

              isSelectedAnswer = false;
              shownQuestion++;

              if (shownQuestion == getQuestionList().length - 1) {
                isRejectButton = true;
              }

              selectedAnswerIndex = null;
            });
          },
          child:
              isRejectButton
                  ? Text('بدون پاسخ', style: TextStyle(fontSize: 16))
                  : isLastQuestion
                  ? Text('نمایش نتایج', style: TextStyle(fontSize: 16))
                  : Text('سوال بعدی', style: TextStyle(fontSize: 16)),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'پاسخ های درست: $correctAnswer',
              style: TextStyle(color: Colors.green, fontSize: 16),
            ),
            Text(
              'پاسخ های غلط: $wrongAnswer',
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),

            Text(
              'بدون پاسخ: $noAnswer',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _getOptionItem(int index) {
    Color _getOptionColor() {
      if (selectedAnswerIndex == null) {
        return Colors.black; // هنوز چیزی انتخاب نشده
      }
      if (index == questionList[shownQuestion].correctAnswer) {
        return Colors.green; // گزینه صحیح
      }
      if (index == selectedAnswerIndex) {
        return Colors.red; // گزینه‌ای که کاربر اشتباه انتخاب کرده
      }
      return Colors.black; // بقیه گزینه‌ها
    }

    return ListTile(
      title: Text(
        '${index + 1}- ${questionList[shownQuestion].answerList![index]}',
        style: TextStyle(color: _getOptionColor()),
        textAlign: TextAlign.start,
        textDirection: TextDirection.rtl,
      ),
      onTap: () {
        setState(() {
          if (isSelectedAnswer) {
            return;
          }

          if (isLastQuestion) {
            return;
          }

          selectedAnswerIndex = index;

          if (isRejectButton) {
            isRejectButton = false;
            isLastQuestion = true;
          }

          isSelectedAnswer = true;
          if (index == questionList[shownQuestion].correctAnswer) {
            correctAnswer++;
          } else {
            wrongAnswer++;
          }
        });
      },
    );
  }
}
