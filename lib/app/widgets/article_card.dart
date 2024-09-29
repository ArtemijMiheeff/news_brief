import 'package:news_brief/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_brief/app/app.dart';

class ArticleCard extends StatelessWidget {
  final Article article;
  const ArticleCard({
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
                  Row(
                    children: [
                                      //Image.network('https://i.ebayimg.com/images/g/5xsAAOSwga9eNuX8/s-l1600.png', width: 50, height: 50,),
                // Text(
                //   article.make,
                //   maxLines: 1,
                //   overflow: TextOverflow.ellipsis,
                //   style: Theme.of(context).textTheme.titleLarge,
                // ),
                Text(
                  article.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                5.ph,
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}