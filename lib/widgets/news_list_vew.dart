import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/list_tile_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatefulWidget {
  NewsListView({super.key, required this.category});
  final String category;
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ListTileModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices(Dio()).getNews(categorty: widget.category);
    isLoading = false;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 160.0),
              child: CircularProgressIndicator(),
            ),
          )
        : ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return NewsTile(tile: articles[index]);
            });
  }
}
