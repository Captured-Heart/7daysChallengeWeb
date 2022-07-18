import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seven_days_web/Presentation/Widgets/dashed_lines.dart';
import 'package:seven_days_web/Presentation/Widgets/left_side_widget.dart';

import '../../src/localization/locales.dart';
import '../../src/sample_feature/desktop_screen.dart';
import '../Widgets/bg_screen.dart';
import '../Widgets/desktop_navbar_three.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme;
    final text = AppLocales.of(context);
    return Scaffold(
      body: SevenDaysBG(
          size: size,
          navBar: DesktopNavBar3(
            size: size,
            navTitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.05,
                  child: Divider(
                    color: IconTheme.of(context).color,
                    thickness: 5,
                    height: 25,
                  ),
                ),
                Text(
                  text.projects,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //! SIDE BAR
              SizedBox(
                width: size.width * 0.15,
                height: size.height * 0.97,
                child: LeftSideBarContent(size: size),
              ),
              SizedBox(
                width: 40,
                height: size.height,
                child: DashedLines(
                  direction: Axis.vertical,
                  height: 1,
                  color: Theme.of(context).canvasColor,
                ),
              ),
              //! MAIN BODY
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      top: size.height * 0.23,
                      child: CarouselProjectWidget(textStyle: textStyle, size: size),
                    ),

                    //
                  ],
                ),
              ),
            ],
          )

          // ThirdScreen(size: size, text: text, textStyle: textStyle)

          // IstScreen(size: size),
          ),
    );
  }
}

class CarouselProjectWidget extends StatelessWidget {
  const CarouselProjectWidget({
    Key? key,
    required this.textStyle,
    required this.size,
  }) : super(key: key);

  final TextTheme textStyle;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'The Payment App',
          style: textStyle.headline1,
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: size.height * 0.55,
          width: size.width * 0.5,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?auto=compress&cs=tinysrgb&w=400',
                height: size.height * 0.45,
                width: size.width,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.02),
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.github,
                        size: size.width * 0.02,
                        color: Theme.of(context).canvasColor,
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.02),
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons
                            .arrowUpRightFromSquare,
                        color: Theme.of(context).canvasColor,
                        size: size.width * 0.02,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
