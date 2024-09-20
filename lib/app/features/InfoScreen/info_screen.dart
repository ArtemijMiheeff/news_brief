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

  final _infoBloc = InfoBloc(getIt<TopNewsRepository>());

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
          title: const Text('Info Page',),
          backgroundColor: const Color.fromARGB(255, 8, 8, 66),
        ),

        body: Container( 
          color: const Color.fromRGBO(227, 221, 225, 1), 
            child: BlocBuilder<InfoBloc, InfoState>(
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
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Specifications',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      20.ph,
                      // Text(
                      //   articles.make,
                      //   maxLines: 1,
                      //   overflow: TextOverflow.ellipsis,
                      //   style: Theme.of(context).textTheme.titleLarge,
                      // ),
                      // 10.ph,
                      // Text(
                      //   articles.model,
                      //   maxLines: 1,
                      //   overflow: TextOverflow.ellipsis,
                      //   style: Theme.of(context).textTheme.titleLarge,
                      // ),
                      // 10.ph,
                      // Text(
                      //   articles.year,
                      //   maxLines: 1,
                      //   overflow: TextOverflow.ellipsis,
                      //   style: Theme.of(context).textTheme.titleLarge,
                      // ),
                      // 10.ph,
                      // Text(
                      //   articles.displacement,
                      //   maxLines: 1,
                      //   overflow: TextOverflow.ellipsis,
                      //   style: Theme.of(context).textTheme.titleLarge,
                      // ),
                      // 10.ph,
                      // ListView.separated(
                      //   primary: false,
                      //   shrinkWrap: true,
                      //   itemCount: articles.length,
                      //   itemBuilder: (context, index) {
                      //     // return ArticleCard(
                      //     //   article: articles[index],
                      //     // );
                      //   },
                      //   separatorBuilder: (context, index) {
                      //     return 20.ph;
                      //   },
                      // ),
                    ],
                  ),
                );
              }
              if (state is InfoLoadFailure) {
                return ErrorCard(
                  title: 'Error',
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
        ),
      );
  }
}