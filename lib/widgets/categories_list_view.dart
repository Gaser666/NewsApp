import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});
  final List<CategoryModel> categories = [
    CategoryModel(
        imageAsset: 'assets/images/health.avif', categoryName: 'Health'),
    CategoryModel(
        imageAsset: 'assets/images/entertaiment.avif',
        categoryName: 'Entertainment'),
    CategoryModel(
        imageAsset: 'assets/images/technology.jpeg',
        categoryName: 'Technology'),
    CategoryModel(
        imageAsset: 'assets/images/science.avif', categoryName: 'Science'),
    CategoryModel(
        imageAsset: 'assets/images/sports.jpeg', categoryName: 'Sports'),
    CategoryModel(
        imageAsset: 'assets/images/bussiness2.jpeg', categoryName: 'Business'),
    CategoryModel(
        imageAsset: "assets/images/Political_Science.jpg",
        categoryName: "Political"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
