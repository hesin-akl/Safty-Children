import 'package:safty_children/features/test/models/question_model.dart';

final List<QuestionModel> stageThreeQuestions = [
  QuestionModel(
    question: '1- هل لديك معلومات عامة عن استخدام تطبيق الإسعافات الأولية في الممارسة العملية؟',
    answers: ['نعم', 'لا'],
    correctAnswer: [],
    isMultiChoice: false,
    type: QuestionType.withoutPoints,
  ),
  QuestionModel(
    question: '2- أهمية تطبيق الموبايل للإسعافات الأولية للممرضين:',
    answers: [
      'الترفيه أثناء فترات الراحة',
      'توفير وصول سريع إلى إرشادات الرعاية الطارئة',
      'بديل الأطباء في حالات الطوارئ',
      'تقديم الإرشادات الطارئة خطوة بخطوة عند الحاجة',
    ],
    correctAnswer: [1, 3],
    isMultiChoice: true,
    point: 1,
    type: QuestionType.withPoints,
    visibilityCondition: (previousAnswers) {
      final answer = previousAnswers["2_0"];
      return answer is int && stageThreeQuestions[0].answers[answer] == 'نعم';
    },
  ),
  QuestionModel(
    question: '3- استخدامات تطبيق الموبايل للإسعافات الأولية للممرضين:',
    answers: [
      'الوصول إلى الإرشادات المتعلقة بحالة الطفل',
      'دعم القرارات أثناء الطوارئ',
      'التواصل عبر وسائل التواصل الاجتماعي',
      'التسوق عبر الإنترنت',
    ],
    correctAnswer: [0, 1],
    isMultiChoice: true,
    point: 1,
    type: QuestionType.withPoints,
    visibilityCondition: (previousAnswers) {
      final answer = previousAnswers["2_0"];
      return answer is int && stageThreeQuestions[0].answers[answer] == 'نعم';
    },
  ),
  QuestionModel(
    question: '4- المخاطر المحتملة من استخدام تطبيق الموبايل للإسعافات الأولية:',
    answers: [
      'تحسين الكفاءة المهارية',
      'الحاجة إلى الاتصال بالإنترنت في جميع الأوقات',
      'احتمالية وجود معلومات غير دقيقة أو قديمة',
      'التكلفة العالية لاستخدام التطبيق',
    ],
    correctAnswer: [1, 2],
    isMultiChoice: true,
    point: 1,
    type: QuestionType.withPoints,
    visibilityCondition: (previousAnswers) {
      final answer = previousAnswers["2_0"];
      return answer is int && stageThreeQuestions[0].answers[answer] == 'نعم';
    },
  ),
];
