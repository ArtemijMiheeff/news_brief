import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_brief/app/app.dart';
import 'package:news_brief/di/di.dart';
import 'package:news_brief/domain/domain.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});
  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  final _infoBloc = InfoBlock(getIt<TopNewsRepository>());
  @override
  void initState() {
    _infoBloc.add(const InfoLoad());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Главная',
          ),
        ),

        body: BlocBuilder<InfoBlock, InfoState>(
          bloc: _infoBloc,
          builder: (context, state) {
          if (state is InfoLoadInProgress) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is InfoLoadSuccess) {
          List<Article> articles = state.articles;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moto',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                20.ph,
                ListView.separated(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: articles.length,
                  itemBuilder: (context, index) {
                    return ArticleCard(
                      article: articles[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return 20.ph;
                  },
                ),
              ],
            ),
            );
          }
          if (state is InfoLoadFailure) {
            return ErrorCard(
              title: 'Ошибка',
              description: state.exception.toString(),
              onReload: () {
                _infoBloc.add(const InfoLoad());
              },
            );
          }
          return const SizedBox();
          },
        ),
      ),
    );
  }
}

class ErrorCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback onReload;

  const ErrorCard({
    super.key,
    required this.title,
    required this.description,
    required this.onReload,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(title),
          Text(description),
          ElevatedButton(
            onPressed: onReload,
            child: const Text('Reload'),
          ),
        ],
      ),
    );
  }
}