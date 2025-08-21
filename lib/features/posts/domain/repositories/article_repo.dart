import '../entities/article.dart';

/// هذه الواجهة تحدد ما يجب أن يوفره أي Repository.
/// الهدف منها هو الفصل بين منطق العمل (Domain) ومصدر البيانات (Data Layer).
abstract class ArticleRepository {
  /// جلب جميع المقالات من أي مصدر (API / Local Database / Cache...)
  Future<List<Article>> getArticles();
}
