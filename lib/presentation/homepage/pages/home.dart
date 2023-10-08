import 'package:eclipse_app/presentation/common/custom_bottom_nav_bar.dart';
import 'package:eclipse_app/presentation/homepage/pages/blog/blog_page.dart';
import 'package:eclipse_app/presentation/homepage/cubit/home_cubit.dart';
import 'package:eclipse_app/presentation/homepage/pages/explore/explore_page.dart';
import 'package:eclipse_app/presentation/homepage/pages/home/home_page.dart';
import 'package:eclipse_app/presentation/homepage/pages/learn/learn_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: SafeArea(
        bottom: false,
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return Scaffold(
              bottomNavigationBar: CustomBottomNavigationBar(
                  homeCubit: context.read<HomeCubit>()),
              body: IndexedStack(
                index: context.read<HomeCubit>().index,
                children: const [
                  HomePage(),
                  BlogPage(),
                  LearnPage(),
                  ExplorePage(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
