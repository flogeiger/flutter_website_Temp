import 'package:flutter/material.dart';
import 'package:flutterweb/constants.dart';

class GetStratedButton extends StatelessWidget {
  const GetStratedButton({Key? key, required this.fillCol}) : super(key: key);
  final bool fillCol;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          print('get Started');
        },
        child: Material(
          elevation: 6,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: fillCol ? Colors.white : primaryDark,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 15,
                    color: fillCol ? primaryDark : textPrimaryDark),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
