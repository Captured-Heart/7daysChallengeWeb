import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seven_days_web/Presentation/Desktop_Screens/project_screen.dart';
import 'package:seven_days_web/src/utils/color_constant.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../Providers/utils_providers.dart';
import '../../src/localization/locale_interface.dart';
import '../../src/sample_feature/desktop_screen.dart';
import '../Widgets/bg_screen.dart';
import '../Widgets/desktop_navbar_three.dart';
import '../Widgets/left_side_widget.dart';


class SecondScreenDesktop extends ConsumerWidget {
  const SecondScreenDesktop({
    Key? key,
    required this.size,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  final Size size;
  final LocaleInterface text;
  final TextTheme textStyle;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final switchLists = ref.watch(switchListTileProvider);
    return SevenDaysBG(
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

            //! MAIN BODY
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    top: size.height * 0.3,
                    child: switchLists == 0
                        ? ProjectsWidget(
                            size: size,
                            textStyle: textStyle,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => const ProjectScreen()),
                                ),
                              );
                            },
                          )
                        : CarouselProjectWidget(
                            textStyle: textStyle, size: size),
                  ),

                  //! TOGGLE SWITCH
                  Positioned(
                    top: size.height * 0.16,
                    left: size.width * 0.3,
                    child: ToggleSwitch(
                      minWidth: 90.0,
                      minHeight: 70.0,
                      initialLabelIndex: switchLists,
                      cornerRadius: 20.0,
                      activeFgColor: ColorConstant.darkBgColor,
                      inactiveBgColor: ColorConstant.lightBgColor,
                      inactiveFgColor: Colors.white,
                      totalSwitches: 2,
                      icons: const [
                        FontAwesomeIcons.listUl,
                        FontAwesomeIcons.square,
                      ],
                      iconSize: 30.0,
                      borderColor:  [
                       ColorConstant.lightTeal,
                       ColorConstant.textBlackColor,
                       ColorConstant.textWhiteColor,

                        // Color(0xff8b9dc3),
                        // Color(0xff00aeff),
                        // Color(0xff0077f2),
                        // Color(0xff962fbf),
                        // Color(0xff4f5bd5)
                      ],
                      dividerColor: Colors.blueGrey,
                      activeBgColors:  [
                        [ColorConstant.textWhiteColor],
                        [ColorConstant.textWhiteColor],
                      ],
                      onToggle: (index) {
                        ref
                            .read(switchListTileProvider.state)
                            .update((state) => index!);
                      },
                    ),
                  ),
                  //
                ],
              ),
            ),
          ],
        )

        // ThirdScreen(size: size, text: text, textStyle: textStyle)

        // IstScreen(size: size),
        );
  }
}
