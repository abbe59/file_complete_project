import '../entities/article.dart';
import '../repositories/article_repo.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetArticles {
  final ArticleRepository repository;

  GetArticles(this.repository);

  Future<List<Article>> call() async {
    return await repository.getArticles();
  }
}
