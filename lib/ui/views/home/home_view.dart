import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                verticalSpaceLarge,
                const Row(
                  children: [
                    Text(
                      'Eventos em destaque',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ],
                ),
                verticalSpaceMedium,
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 204,
                  child: Flexible(
                    child: ListView.builder(
                      itemCount: viewModel.items.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 250,
                          height: 190,
                          margin: const EdgeInsets.only(right: 20),
                          padding: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(children: [
                            const Text('Evento X'),
                            verticalSpaceTiny,
                            Image.asset(
                              'assets/images/party.jpg',
                              fit: BoxFit.contain,
                            ),
                            verticalSpaceTiny,
                          ]),
                        );
                      },
                    ),
                  ),
                ),
                verticalSpaceMedium,
                const Row(
                  children: [
                    Text(
                      "Baladas e festas recorrentes",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ],
                ),
                verticalSpaceMedium,
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 175,
                  child: Flexible(
                    child: ListView.builder(
                      itemCount: viewModel.items.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 170,
                          height: 210,
                          margin: const EdgeInsets.only(right: 20),
                          padding: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(children: [
                            const Text('Evento X'),
                            verticalSpaceTiny,
                            Image.asset(
                              'assets/images/party.jpg',
                              fit: BoxFit.fill,
                            ),
                            verticalSpaceTiny,
                            const Text(
                              "10/10/23",
                              textAlign: TextAlign.end,
                            )
                          ]),
                        );
                      },
                    ),
                  ),
                ),
                verticalSpaceSmall,
                ElevatedButton(
                    onPressed: () {}, child: const Text("Ver todos")),
                verticalSpaceMedium,
                const Row(
                  children: [
                    Text(
                      "Novos Eventos",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                    ),
                  ],
                ),
                verticalSpaceMedium,
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: 175,
                  child: Flexible(
                    child: ListView.builder(
                      itemCount: viewModel.items.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 170,
                          height: 200,
                          margin: const EdgeInsets.only(right: 20),
                          padding: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Column(children: [
                            const Text('Evento X'),
                            verticalSpaceTiny,
                            Image.asset(
                              'assets/images/party.jpg',
                              fit: BoxFit.fill,
                            ),
                            verticalSpaceTiny,
                            const Text(
                              "10/10",
                              textAlign: TextAlign.end,
                            )
                          ]),
                        );
                      },
                    ),
                  ),
                ),
                verticalSpaceSmall,
                ElevatedButton(
                    onPressed: () {}, child: const Text("Ver todos")),
                verticalSpaceSmall
              ],
            ),
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
