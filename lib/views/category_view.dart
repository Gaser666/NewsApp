import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_vew.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: NewsListView(
                category: category,
              ),
            ),
          )
        ],
      ),
    );
  }
}
