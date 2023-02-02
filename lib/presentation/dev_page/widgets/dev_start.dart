import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterweb/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutterweb/presentation/core/page_wrapper/centered_constraint_wrapper.dart';

class DevelopmentStart extends StatelessWidget {
  const DevelopmentStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsiveValue = ResponsiveWrapper.of(context);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.teal[100]!],
        ),
      ),
      child: CenteredConstrainedWrapper(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ResponsiveRowColumn(
              columnVerticalDirection: VerticalDirection.up,
              columnMainAxisSize: MainAxisSize.min,
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    child: Text(
                      'Build more with Flutter',
                      style: TextStyle(
                        fontFamily: fontFamily,
                        color: textPrimaryLight,
                        fontWeight: FontWeight.bold,
                        height: 0.9,
                        fontSize:
                            responsiveValue.isSmallerThan(DESKTOP) ? 40 : 75,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: responsiveValue.equals(TABLET) ? 120 : 50,
                      vertical: 20,
                    ),
                    child: Image.asset('assets/images/development.png'),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 50,
              ),
              child: Text(
                'Flutter transforms the app development process so you can ship more, faster. Deploy to isx targets from a single codebase.',
                style: TextStyle(
                    color: textPrimaryLight,
                    fontFamily: fontFamily,
                    fontSize: responsiveValue.isLargerThan(TABLET) ? 38 : 22),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
