import 'package:flutter/material.dart';
import 'package:covid19/constants/colors.dart';
import 'package:covid19/ui/statistics/statistics_screen.dart';

/// States for [HomeRoutes]
enum HomeRoutes {
  statistics,
}

/// [HomeRoutesDefinitions] to map the appropriate states of [HomeRoutes]
/// to paths
extension HomeRouteDefinitions on HomeRoutes {
  String get name {
    switch (this) {
      case HomeRoutes.statistics:
        return '/';
      default:
        return '/';
    }
  }

  /// [HomeRoutes] to decode the appropriate paths to [HomeRoutes]
  static HomeRoutes fromString(String str) {
    switch (str) {
      case '/':
        return HomeRoutes.statistics;
      case '/statistics':
        return HomeRoutes.statistics;
      default:
        return HomeRoutes.statistics;
    }
  }
}

/// Mappping the [HomeRoutes] to the particular [MaterialPageRoute] returning the
///  appropriate Screen
class HomeRouter {
  static List<String> routesStack = [];

  static Route<dynamic> generateRoute(
    RouteSettings settings,
  ) {
    routesStack.add(settings.name);
    switch (HomeRouteDefinitions.fromString(settings.name)) {
      case HomeRoutes.statistics:
        return CustomPageRoute(StatisticsScreen());

      default:
        return CustomPageRoute(StatisticsScreen());
    }
  }
}

/// [HomeNavigator] for [HomeScreen] to handle the different routes re-directed from the
/// [HomeScreen].
///
/// Add any new routes that have to be re-directed from the [HomeScreen]
/// [HomeNavigator] can handle the following [HomeRoutes]
///
/// 1. [home] - To lead the use to the default [HomeScreen]
/// 2. [latestNumbers] - To lead the user to the [StatisticsScreen]
/// 3. [prevention] -  To lead the user to the [PreventionScreen]
/// 4. [symptomChecker] - To lead the user to the [SymptomCheckerScreen]
/// 5. [symptoms] - To lead the user to the [SymptomsScreen]
/// 6. [faq] - To lead the user to the [FAQScreen]
/// 7. [information] - TO lead the user to the [InformationScreen]
class HomeNavigator extends StatelessWidget {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  final HeroController _heroController = HeroController();

  // Convenience static method for extended functionality
  static void pop(BuildContext context) {
    HomeRouter.routesStack.removeLast();
    navigatorKey.currentState.pop();
  }

  @override
  Widget build(BuildContext context) {
    // Handle the BackButton for the sub-navigator
    return WillPopScope(
      onWillPop: () async {
        if (HomeRouter.routesStack.length == 1) {
          return true;
        }
        HomeRouter.routesStack.removeLast();
        navigatorKey.currentState.pop();
        return false;
      },
      child: Navigator(
        key: navigatorKey,
        observers: [_heroController],
        initialRoute: HomeRoutes.statistics.name,
        onGenerateRoute: (settings) => HomeRouter.generateRoute(settings),
      ),
    );
  }
}

class CustomPageRoute<T> extends PageRoute<T> {
  CustomPageRoute(this.child);
  @override
  // TODO: implement barrierColor
  Color get barrierColor => AppColors.primaryColor;

  @override
  String get barrierLabel => null;

  final Widget child;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return child;
    // return FadeTransition(
    //   opacity: animation,
    //   child: child,
    // );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);
}
