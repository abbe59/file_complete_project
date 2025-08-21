import 'package:flutter/material.dart';
import 'package:flutter_login_tuterual/features/posts/presentation/pages/home_page.dart';
import 'package:flutter_login_tuterual/features/posts/presentation/pages/posts_page.dart';
import 'features/posts/presentation/pages/home_page.dart';

class AppRouter {
  static const String home = '/';
  static const String patientDetails = '/patient-details';
  static const String scaleExample = '/scale';
  static const String bottomToTopExample = '/bottom-to-top';
  static const String rotationExample = '/rotation';
  static const String rotationRightToLeft = '/rightToLeft';
  static const String rotationLeftToRight = '/leftToRight';
  static const String rotationFadeScale = '/fadeScale';
  static const String rotationSlideRotate = '/slideRotate';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return _fadeRoute(const HomePage(), settings);

      case patientDetails:
        final patientId = settings.arguments as int?;
        return _slideFromRight(
          PatientDetailsPage(patientId: patientId ?? 0),
          settings,
        );

      case scaleExample:
        return _scaleRoute(const HomePage(), settings);

      case bottomToTopExample:
        return _slideFromBottom(const PostsPage(), settings);
      case rotationRightToLeft:
        return _rightToLeftRoute(const PostsPage(), settings);

      case rotationExample:
        return _rotationRoute(const HomePage(), settings);

      case rotationLeftToRight:
        return _leftToRightRoute(const HomePage(), settings);

      case rotationFadeScale:
        return _fadeScaleRoute(const HomePage(), settings);

      case rotationSlideRotate:
        return _slideRotateRoute(const HomePage(), settings);

      default:
        return _fadeRoute(
          Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
          settings,
        );
    }
  }

  // 📌 حركة Fade In/Out
  static PageRouteBuilder _fadeRoute(Widget page, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        return FadeTransition(opacity: animation, child: child);
      },
    );
  }

  // 📌 حركة Slide من اليمين
  static PageRouteBuilder _slideFromRight(Widget page, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        final tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: Curves.easeInOut));
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }

  static PageRouteBuilder _rightToLeftRoute(
    Widget page,
    RouteSettings settings,
  ) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        const begin = Offset(1, 0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }

  // 📌 حركة من الأسفل للأعلى
  static PageRouteBuilder _slideFromBottom(
    Widget page,
    RouteSettings settings,
  ) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        final tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: Curves.easeInOut));
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }

  static PageRouteBuilder _fadeScaleRoute(Widget page, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(scale: animation, child: child),
        );
      },
    );
  }

  static PageRouteBuilder _leftToRightRoute(
    Widget page,
    RouteSettings settings,
  ) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        const begin = Offset(-1, 0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }

  // 📌 حركة تكبير/تصغير
  static PageRouteBuilder _scaleRoute(Widget page, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        return ScaleTransition(scale: animation, child: child);
      },
    );
  }

  static PageRouteBuilder _slideRotateRoute(
    Widget page,
    RouteSettings settings,
  ) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        var slide = Tween(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(animation);
        var rotate = Tween(begin: 0.0, end: 1.0).animate(animation);
        return SlideTransition(
          position: slide,
          child: RotationTransition(turns: rotate, child: child),
        );
      },
    );
  }

  // 📌 حركة دوران
  static PageRouteBuilder _rotationRoute(Widget page, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        return RotationTransition(turns: animation, child: child);
      },
    );
  }
}
