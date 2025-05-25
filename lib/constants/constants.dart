import 'package:quiz_application/data/question.dart';

List<Question> getQuestionList() {
  var question1 = Question();
  question1.questionTitle = 'مشهور ترین شعبده‌باز جهان کیست؟';
  question1.imageNameNumber = '1';
  question1.correctAnswer = 2;
  question1.answerList = [
    'امیراحمدادیبی',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین',
  ];

  var question2 = Question();
  question2.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  question2.imageNameNumber = '2';
  question2.correctAnswer = 0;
  question2.answerList = ['(شوروی سابق)روسیه', 'آمریکا', 'چین', 'هند'];

  var question3 = Question();
  question3.questionTitle = 'گران ترین ادویه جهان از نظر وزنی کدام است؟';
  question3.imageNameNumber = '3';
  question3.correctAnswer = 1;
  question3.answerList = ['دارچین', 'زعفران', 'جوز هندی', 'وانیل'];

  var question4 = Question();
  question4.questionTitle = 'اولین بمب اتمی در کدام شهر ژاپنی پرتاب شد؟';
  question4.imageNameNumber = '4';
  question4.correctAnswer = 2;
  question4.answerList = ['ناکازاکی', 'فوکوشیما', 'هیروشیما', 'کاگوشیما'];

  var question5 = Question();
  question5.questionTitle = 'سریع ترین حیوان خشکی چیست؟';
  question5.imageNameNumber = '5';
  question5.correctAnswer = 3;
  question5.answerList = ['جگوار', 'پلنگ', 'ببر', 'یوزپلنگ'];

  var question6 = Question();
  question6.questionTitle = 'پیکاسو اهل کدام کشور بود؟';
  question6.imageNameNumber = '6';
  question6.correctAnswer = 0;
  question6.answerList = ['اسپانیا', 'فرانسه', 'پرتغال', 'ایتالیا'];

  var question7 = Question();
  question7.questionTitle =
      'کدام حیوان به عنوان بهترین دوست انسان شناخته می شود؟';
  question7.imageNameNumber = '7';
  question7.correctAnswer = 3;
  question7.answerList = ['گربه', 'همستر', 'خرگوش', 'سگ'];

  var question8 = Question();
  question8.questionTitle = 'اژدهای کومودو چه نوع حیوانی است؟';
  question8.imageNameNumber = '8';
  question8.correctAnswer = 0;
  question8.answerList = ['مارمولک', 'سوسمار', 'بزمجه', 'آفتاب پرست'];

  var question9 = Question();
  question9.questionTitle =
      'سومین کشوری که به بمب اتمی دست یافت کدام کشور بود؟';
  question9.imageNameNumber = '9';
  question9.correctAnswer = 2;
  question9.answerList = ['پاکستان', 'ژاپن', 'انگلیس', 'هند'];

  var question10 = Question();
  question10.questionTitle =
      'یک تنبل چقدر طول می کشد تا یک وعده غذایی را هضم کند؟';
  question10.imageNameNumber = '10';
  question10.correctAnswer = 1;
  question10.answerList = ['یک هفته', 'دو هفته', '10 روز', '48 ساعت'];

  return [
    question1,
    question2,
    question3,
    question4,
    question5,
    question6,
    question7,
    question8,
    question9,
    question10,
  ];
}
