import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import '../views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return  CategoryView(category: category.categoryName,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          height: 85,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(category.imageAsset), fit: BoxFit.fill),
            // color: Colors.amber,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
              child: Text(
            category.categoryName,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
