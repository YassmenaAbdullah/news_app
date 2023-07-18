import 'package:flutter/material.dart';

class CategoryGridView extends StatelessWidget {

  Category category;
  int index;
  Function onClickItem;

  CategoryGridView({
    required this.category,
    required this.index,
    required this.onClickItem,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClickItem(category);
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: category.CategoryBackgroud,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(25),
              topRight: const Radius.circular(25),
              bottomLeft: Radius.circular(index % 2 == 0 ? 30 : 0),
              bottomRight: Radius.circular(index % 2 == 0 ? 0 : 30),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(category.CategoryImage),
            Text(
              category.CategoryTitle,
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
    );
  }
}

class Category {
  String CategoryId;
  String CategoryImage;
  String CategoryTitle;
  Color CategoryBackgroud;

  Category({
    required this.CategoryId,
    required this.CategoryImage,
    required this.CategoryTitle,
    required this.CategoryBackgroud,
  });
}
