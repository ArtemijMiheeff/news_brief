import 'package:news_brief/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_brief/app/app.dart';

class ArticleCardInfo extends StatelessWidget {
  final Article article;
  const ArticleCardInfo({
    super.key,
    required this.article,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // для следующей лабораторной работы
        context.go('/home/article/1');
      },
      borderRadius: BorderRadius.circular(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Тип:",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  article.type,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  //style: Theme.of(context).textTheme.titleLarge,
                  style: TextStyle(
                    fontSize: 20, // Задайте здесь желаемый размер шрифта
                  ),
                ),
                Text(
                  "Кубатура:",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  article.displacement,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  //style: Theme.of(context).textTheme.titleLarge,
                  style: TextStyle(
                    fontSize: 20, // Задайте здесь желаемый размер шрифта
                  ),
                ),
                5.ph,
              ],
            ),
          ),
        ],
      ),
    );
  }
}