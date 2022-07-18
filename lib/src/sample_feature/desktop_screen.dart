import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seven_days_web/Presentation/Desktop_Screens/ist_screen_desktop.dart';
import 'package:seven_days_web/src/localization/locales.dart';

import '../../Presentation/Desktop_Screens/second_screen_desktop.dart';
import '../../Presentation/Desktop_Screens/third_screen_desktop.dart';
import '../../Providers/utils_providers.dart';

class DesktopScreen extends ConsumerStatefulWidget {
  const DesktopScreen({
    Key? key,
  }) : super(key: key);

  static const routeName = '/';

  @override
  DesktopScreenState createState() => DesktopScreenState();
}

class DesktopScreenState extends ConsumerState<DesktopScreen> {
  // late final PageController pageController;
  @override
  Widget build(BuildContext context) {
    final pageController = ref.watch(pageControllerProvider);
    final Size size = MediaQuery.of(context).size;
    final textStyle = Theme.of(context).textTheme;
    final text = AppLocales.of(context);
    return Scaffold(
        // backgroundColor: ColorConstant.darkBgColor,
        body: SizedBox(
      height: size.height,
      width: size.width,
      child: PageView(
        scrollDirection: Axis.vertical,
        // physics: NeverScrollableScrollPhysics(),
        pageSnapping: false,
        padEnds: false,
        allowImplicitScrolling: true,
        controller: pageController,
        children: [
          // ProjectScreen(),

          IstScreenDesktop(size: size),
          SecondScreenDesktop(size: size, text: text, textStyle: textStyle),
          ThirdScreenDesktop(size: size, text: text, textStyle: textStyle),
        ],
      ),
    )

        //
        );
  }
}

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({
    Key? key,
    required this.size,
    required this.textStyle,
    required this.onTap,
    required this.title,
    required this.content,
    required this.imgUrl,
    required this.webUrl,
    required this.gitUrl,
    // this.date,
  }) : super(key: key);

  final Size size;
  final TextTheme textStyle;
  final VoidCallback onTap;
  final String title, content, imgUrl, webUrl, gitUrl;
  // final DateTime? date;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.4,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.centerLeft,
            clipBehavior: Clip.none,
            children: [
              //? IMAGE BEHIND CONTAINER
              Positioned(
                left: size.width * 0.25,
                child: CachedNetworkImage(
                  imageUrl: imgUrl,
                  height: size.height * 0.32,
                  width: size.width * 0.4,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                ),
              ),

              //? THE WHITE CONTAINER
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: textStyle.headline1,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Icon(
                        FontAwesomeIcons.arrowUpRightFromSquare,
                        color: Theme.of(context).highlightColor,
                      )
                    ],
                  ),
                  Container(
                    height: size.height * 0.25,
                    margin: const EdgeInsets.only(top: 5),
                    width: size.width * 0.4,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Theme.of(context).highlightColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(content),
                        TextButton(
                          onPressed: onTap,
                          style: TextButton.styleFrom(
                            backgroundColor: Theme.of(context).canvasColor,
                            padding: const EdgeInsets.all(20),
                            textStyle: textStyle.headline1,
                          ),
                          child: Text('yt'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
