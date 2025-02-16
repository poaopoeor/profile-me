import 'package:flutter/material.dart';
import 'package:profile_me/mobile/about_mobile.dart';
import 'package:profile_me/mobile/blog_mobile.dart';
import 'package:profile_me/mobile/contact_mobile.dart';
import 'package:profile_me/mobile/landing_page_mobile.dart';
import 'package:profile_me/mobile/works_mobile.dart';
import 'package:profile_me/web/about_web.dart';
import 'package:profile_me/web/blog_web.dart';
import 'package:profile_me/web/contact_web.dart';
import 'package:profile_me/web/landing_page_web.dart';
import 'package:profile_me/web/works_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return LandingPageWeb();
            } else {
              return LandingPageMobile();
            }
          }),
        );
      case '/contact':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return ContactWeb();
            } else {
              return ContactMobile();
            }
          }),
          settings: settings,
        );
      case '/about':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return AboutWeb();
            } else {
              return AboutMobile();
            }
          }),
          settings: settings,
        );
      case '/blog':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return BlogWeb();
            } else {
              return BlogMobile();
            }
          }),
          settings: settings,
        );
      case '/works':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return WorksWeb();
            } else {
              return WorksMobile();
            }
          }),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 800) {
              return LandingPageWeb();
            } else {
              return LandingPageMobile();
            }
          }),
        );
    }
  }
}
