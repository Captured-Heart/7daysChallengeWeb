import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pageviewj/pageviewj.dart';
import 'package:seven_days_web/Presentation/Widgets/bg_screen.dart';
import 'package:seven_days_web/Providers/steam_providers.dart';
import 'package:seven_days_web/src/localization/locales.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../Providers/utils_providers.dart';
import '../../src/utils/color_constant.dart';
import '../Widgets/carousel_project_widget.dart';
import '../Widgets/mobile/mobile_project_card.dart';
import '../Widgets/mobile/third_mobile_navbar.dart';

class SecondMobileScreen extends ConsumerWidget {
  SecondMobileScreen({
    Key? key,
    // required this.text,
    // required this.textStyle,
    // required this.size,
  }) : super(key: key);
  // final LocaleInterface text;
  // final TextTheme textStyle;
  // final Size size;
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projects = ref.watch(fetchProjectProvider);
    final switchLists = ref.watch(switchListTileProvider);

    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SevenDaysBG(
            size: size,
            navBar: ThirdMobileNavBar(
              size: size,
              navTitle: AppLocales.of(context).projects,
              text: AppLocales.of(context),
              textStyle: Theme.of(context).textTheme,
            ),
            child: Positioned(
              top: size.height * 0.16,
              child: Column(
                children: [
                  ToggleSwitch(
                    minWidth: 60.0,
                    minHeight: 40.0,
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
                    borderColor: [
                      ColorConstant.lightTeal,
                      ColorConstant.textBlackColor,
                      ColorConstant.textWhiteColor,
                      Colors.green
                    ],
                    dividerColor: ColorConstant.darkBgColor,
                    activeBgColors: [
                      [ColorConstant.textWhiteColor],
                      [ColorConstant.textWhiteColor],
                    ],
                    onToggle: (index) {
                      ref
                          .read(switchListTileProvider.state)
                          .update((state) => index!);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      height: size.height * 0.68,
                      width: size.width,
                      child: projects.when(
                          data: (data) {
                            return switchLists == 0

                                //! SCROLL VERTICAL CAROUSEL
                                ? RawScrollbar(
                                    crossAxisMargin: 20,
                                    mainAxisMargin: size.height * 0.015,
                                    
                                    thumbColor: Colors.blue[300],
                                    thumbVisibility: true,
                                    trackVisibility: true,
                                    trackBorderColor: Colors.green,
                                    trackColor: Colors.yellow,
                                    minThumbLength: 0.6,
                                    thickness: 10,
                                    radius: const Radius.circular(20),
                                    // interactive: true,
                                    controller: scrollController,
                                    scrollbarOrientation:
                                        ScrollbarOrientation.right,
                                    child: ListView.builder(
                                      itemCount: data.length,
                                      controller: scrollController,
                                      itemBuilder: (context, index) {
                                        var project = data[index];

                                        return MobileProjectListCard(
                                            size: size,
                                            content: project.content,
                                            gitUrl: project.gitHubUrl,
                                            imgUrl: project.imgUrl,
                                            title: project.title,
                                            webUrl: project.webUrl,
                                            date: project.date?.toDate());
                                      },
                                    ),
                                  )

                                //! Scroll right Carousel
                                : RawScrollbar(
                                    crossAxisMargin: 20.1,
                                    mainAxisMargin: size.height * 0.1,
                                    thumbColor: Colors.blue[400],
                                    thumbVisibility: true,
                                    // trackVisibility: true,
                                    trackBorderColor: Colors.green,
                                    trackColor: Colors.yellow,
                                    minThumbLength: 20,
                                    thickness: 10,
                                    radius: const Radius.circular(20),
                                    // interactive: true,
                                    controller: scrollController,
                                    scrollbarOrientation:
                                        ScrollbarOrientation.bottom,
                                    child: ListView.builder(
                                        itemCount: data.length,
                                        scrollDirection: Axis.horizontal,
                                        controller: scrollController,
                                        itemBuilder: (context, index) {
                                          var project = data[index];

                                          return CarouselProjectWidget(
                                            textStyle:
                                                Theme.of(context).textTheme,
                                            size: size,
                                            content: project.content!,
                                            title: project.title!,
                                            webUrl: project.webUrl!,
                                            gitUrl: project.gitHubUrl!,
                                            imgUrl: project.imgUrl!,
                                            // date: project.date!.toDate(),
                                          );
                                        }),
                                  );
                          },
                          error: (er, _) => Center(
                                child: Text(er.toString()),
                              ),
                          loading: () => const Center(
                                child: CircularProgressIndicator(),
                              )),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
