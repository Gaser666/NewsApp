import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_list_vew.dart';
import 'package:news_app/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News'),
            Text(
              'World',
              style: TextStyle(color: Colors.purpleAccent),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CategoriesListView(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: NewsListView(category: 'general',),
            ),
          )
        ],
      ),
      // body: Column(
      //   children: [
      //     CategoriesListView(),
      //     SizedBox(
      //       height: 20,
      //     ),
      //     NewsListView(),
      //   ],
      // ),
    );
  }
}
