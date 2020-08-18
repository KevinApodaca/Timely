import 'package:Timely/enums.dart';
import 'package:flutter/foundation.dart';

class MenuInfo extends ChangeNotifier {
  MenuType menuType;
  String imageSrc;
  String title;

  MenuInfo(this.menuType, {this.title, this.imageSrc});

  updateMenu(MenuInfo menuInfo) {
    this.menuType = menuInfo.menuType;
    this.imageSrc = menuInfo.imageSrc;
    this.title = menuInfo.title;

    notifyListeners();
  }
}
