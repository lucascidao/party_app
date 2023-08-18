import 'package:party_app/app/app.locator.dart';
import 'package:party_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void homePage() {
    _navigationService.navigateToHomeView();
  }
}
