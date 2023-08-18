import 'package:lyabs_dev/presentation/router/no_animation_route.dart';
import 'package:lyabs_dev/presentation/screens/aspect_ratio_test/aspect_ratio_test.dart';
import 'package:lyabs_dev/presentation/screens/expended_test/expanded_test.dart';
import 'package:lyabs_dev/presentation/screens/layout_builder_test/layout_builder_test.dart';
import 'package:lyabs_dev/presentation/screens/media_query_test/media_query_test.dart';
import 'package:lyabs_dev/presentation/screens/simple_screen_no_responsive/simple_screen_no_responsive.dart';
import 'package:lyabs_dev/utils/my_material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {

    Map<String, dynamic>? arguments = settings.arguments as Map<String, dynamic>?;
    Widget? page;

    switch (settings.name) {
      case pageHome:
        page = const HomePage();
        break;
      case pageSimpleScreenNoResponsive:
        page = const SimpleScreenNoResponsive();
        break;
      case pageLayoutBuilder:
        page = const LayoutBuilderTest();
        break;
      case pageMediaQuery:
        page = const MediaQueryTest();
        break;
      case pageAspectRatio:
        page = const AspectRatioTest();
        break;
      case pageExpanded:
        page = const ExpandedTest();
        break;
      default:
    }

    if (page != null) {

      if (arguments != null && (arguments[argumentIsNOAnimation]?? false)) {
        return NoAnimationMaterialPageRoute(builder: (_) => page!);
      }

      return MaterialPageRoute(builder: (_) => page!);
    }

    return null;
  }
}