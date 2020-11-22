import 'package:bloc/bloc.dart';
import 'package:sidebar_animation/pages/myappointments.dart';
import '../pages/myaccountspage.dart';

import '../pages/homepage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyAppointmentsClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => MyAccountsPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountsPage();
        break;
      case NavigationEvents.MyAppointmentsClickedEvent:
        yield MyAppointmentsPage();
        break;
    }
  }
}
