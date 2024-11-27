import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

@RoutePage()
class StartupView extends StatelessWidget {
  const StartupView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewmodel>.reactive(
      builder: (context, viewModel, child) => Scaffold(
        body: Center(
          child: Text(''),
        ),
        // floatingActionButton:
        //     FloatingActionButton(onPressed: viewModel.updateCounter),
      ),
      viewModelBuilder: () => StartupViewmodel(),
    );
  }
}
