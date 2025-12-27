import 'package:my_serverpod_project_server/src/generated/article_class.dart';
import 'package:serverpod/serverpod.dart';

class ArticalEndpoint extends Endpoint {
  //fetch all articles
  Future<List<Article>> getArtical(Session session, {String? keyword}) async {
    return await Article.db.find(
      session,
      where: (t) =>
          keyword != null ? t.title.like("%keyword%") : Constant.bool(true),
    );
  }

  Future<List<Article>> addArticle(Session session, List<Article> artical) async {
    var result = await Article.db.insert(session, artical);
    return result;
  }

  //update
  Future<List<Article>> upDate(Session session, List<Article> article) async {
    List<Article> result = await Article.db.update(session, article);
    return result;
  }
}
  // This class will handle