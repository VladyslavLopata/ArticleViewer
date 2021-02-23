import 'package:flutter/material.dart';
import 'package:test_task/home/bloc/home_bloc.dart';
import 'package:test_task/home/data/article_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/home/views/home_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeBloc(repository: ArticleRepository())..add(DataLoadEvent()),
      child: HomeView(),
    );
  }
}
