import 'package:get/get.dart';
import '../../screens/Onboarding/index.dart';
import '../../screens/dashboard/index.dart';
import 'routes.dart';

class RoutePages {
  static const initial = AppRoutes.initial;

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.dashborad,
      page: () => DashboardScreen(),
      binding: DashboardBinding(),
    ),
  ];
}
