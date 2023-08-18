import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 100),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 50),
          child: Column(
            children: [
              const Text(
                "Security Party",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 40),
              ),
              const SizedBox(height: 100),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "E-mail",
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(10)),
              ),
              const SizedBox(height: 50),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Senha",
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(10)),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                  onPressed: viewModel.homePage, child: const Text("Login")),
              TextButton(
                  onPressed: () {}, child: const Text("Esqueceu sua senha?"))
            ],
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
