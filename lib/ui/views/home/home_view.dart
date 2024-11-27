import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewmodel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        body: Center(
          child: Text(viewModel.title),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: viewModel.updateCounter),
      ),
      viewModelBuilder: () => HomeViewmodel(),
    );
  }
}
