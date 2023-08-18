import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:party_app/ui/common/app_colors.dart';
import 'package:party_app/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 20),
                    suffixIcon: Icon(Icons.search)),
              ),
              verticalSpaceMedium,
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: const Row(
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 75,
        color: Colors.blue.shade200,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.house)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.library_books)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.engineering))
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
