import 'package:flutter/material.dart';

import '../../../src/localization/locale_interface.dart';

class ThirdMobileNavBar extends StatelessWidget {
  const ThirdMobileNavBar({
    Key? key,
    required this.size,
    required this.text,
    required this.textStyle,  this.navTitle,
  }) : super(key: key);

  final Size size;
  final LocaleInterface text;
  final TextTheme textStyle;
  final String ? navTitle;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        clipBehavior: Clip.none,
        height: size.height * 0.12,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border(
              bottom: BorderSide(color: Theme.of(context).canvasColor),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * 0.1,
                    child: Divider(
                      color: IconTheme.of(context).color,
                      thickness: 5,
                      height: 25,
                    ),
                  ),
                  Text(
                  navTitle??  text.aboutUs,
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            // ThemeSwitchWeb(themeProvider: themeProvider),
          ],
        ),
      ),
    );
  }
}
