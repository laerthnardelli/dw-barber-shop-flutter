import 'package:flutter/material.dart';

import '../widgets/home_header.dart';

class HomeAdmPage extends StatelessWidget {
  const HomeAdmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: HomeHeader(),
          ),
        ],
      ),
    );
  }
}
