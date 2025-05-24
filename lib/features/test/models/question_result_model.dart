class QuestionResultModel {
  final int questionId;
  final int userCorrectAnswers;
  final int totalCorrectAnswers;
  final bool isMultiChoice;

  QuestionResultModel({
    required this.questionId,
    required this.userCorrectAnswers,
    required this.totalCorrectAnswers,
    required this.isMultiChoice,
  });

  double get result {
    if (isMultiChoice) {
      return (userCorrectAnswers / totalCorrectAnswers).clamp(0.0, 1.0);
    } else {
      return userCorrectAnswers == 1 ? 0.5 : 0.0;
    }
  }
}
