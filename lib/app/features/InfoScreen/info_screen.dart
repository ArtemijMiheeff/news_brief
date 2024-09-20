import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_brief/app/app.dart';
import 'package:news_brief/di/di.dart';
import 'package:news_brief/domain/domain.dart';
import 'package:news_brief/domain/repository/model/article.dart';
import 'package:go_router/go_router.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Характеристики'),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              width: 100,
              height: 100,
              'hhttps://avatars.mds.yandex.net/i?id=c4c4fb2992c158ee531c33ac19f9e416_l-9197564-images-thumbs&n=13.png',
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Россия',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          ElevatedButton(
            onPressed: (){
              context.push('/home/article/1');
            },
            child: Text('Back'))
        ],
      ),
    );
  }
}