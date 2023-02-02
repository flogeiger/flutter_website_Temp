import 'package:flutter/material.dart';
import 'package:flutterweb/presentation/core/buttons/get_started.dart';
import 'package:flutterweb/presentation/core/menu/flutter_home_logo.dart';
import 'package:flutterweb/presentation/core/menu/menu_item.dart';
import 'package:flutterweb/presentation/dev_page/dev_page.dart';
import 'package:flutterweb/presentation/eco_page/eco_page.dart';

class CostumeMenuBar extends StatelessWidget {
  const CostumeMenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black, offset: Offset(0, 2), blurRadius: 4),
        ],
      ),
      child: Row(
        children: const [
          FlutterHomeLogo(),
          Spacer(),
          MenuItem(text: 'Docs', inDrawer: false, path: ''),
          MenuItem(text: 'Showcase', inDrawer: false, path: ''),
          MenuItem(
              text: 'Development', inDrawer: false, path: DevPage.devPagePath),
          MenuItem(
              text: 'Ecosystem', inDrawer: false, path: EcoPage.ecoPagePath),
          GetStratedButton(
            fillCol: false,
          ),
        ],
      ),
    );
  }
}
