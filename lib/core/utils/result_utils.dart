
import 'package:safty_children/features/test/models/question_result_model.dart';

double calculateTotalScore(List<QuestionResultModel> results) {
  return results.fold(0.0, (sum, q) => sum + q.result);
}

double calculateMaxScore(List<QuestionResultModel> results) {
  return results.fold(0.0, (sum, q) => sum + (q.isMultiChoice ? 1.0 : 0.5));
}
