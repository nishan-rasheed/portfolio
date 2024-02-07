

import 'app_enums.dart';

extension AppBarHeaderExtension on AppBarHeaderEnum {
  String getString() {
    switch (this) {
      case AppBarHeaderEnum.home:
        return 'Home';
      case AppBarHeaderEnum.about:
        return 'About me';
      case AppBarHeaderEnum.projects:
        return 'Projects';
      case AppBarHeaderEnum.contact:
        return 'Contact';
    }
  }
}