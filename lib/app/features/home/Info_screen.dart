import 'package:flutter/material.dart';
import 'package:news_brief/app/app.dart';
import 'package:news_brief/app/widgets/article_card.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Info'),
        ),
        body: (Text ('Hello')),
      ),
    );
  }
}