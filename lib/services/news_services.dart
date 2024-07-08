import 'package:dio/dio.dart';
import 'package:news_app/models/list_tile_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);
  Future<List<ListTileModel>> getNews({required String categorty}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=e619455b2e7a4685ac3e5f276b1fe600&category=$categorty');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ListTileModel> articlesList = [];
    for (var article in articles) {
      ListTileModel articleModel = ListTileModel(
        lstTileImage: article['urlToImage'],
        discription: article['title'],
        listTileRef: article['description'],
        site: 'url',
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
