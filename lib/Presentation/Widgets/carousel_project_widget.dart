import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seven_days_web/src/utils/responsive.dart';

import '../../src/utils/url_launcher.dart';


class CarouselProjectWidget extends StatelessWidget {
   CarouselProjectWidget({
    Key? key,
    required this.textStyle,
    required this.size,
    required this.title,
    required this.content,
    required this.imgUrl,
    required this.webUrl,
    required this.gitUrl,
  }) : super(key: key);

  final TextTheme textStyle;
  final Size size;
  final String title, content, imgUrl, webUrl, gitUrl;
final UrlLauncherUtil urlLauncherUtil = UrlLauncherUtil();

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: textStyle.headline1,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: isMobile ? size.height * 0.48 : size.height * 0.55,
            width: isMobile ? size.width * 0.85 : size.width * 0.5,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: isMobile ? size.height * 0.4 : size.height * 0.45,
                  width: size.width,
                  child: CachedNetworkImage(
                    imageUrl: imgUrl,
                    height: size.height * 0.45,
                    width: size.width,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(content),
                      Row(
                        children: [
                          IconButton(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.02),
                            onPressed: () async {
                              await urlLauncherUtil.launchWeb(gitUrl);
                            },
                            icon: Icon(
                              FontAwesomeIcons.github,
                              size: isMobile
                                  ? size.width * 0.07
                                  : size.width * 0.02,
                              color: Theme.of(context).canvasColor,
                            ),
                          ),
                          IconButton(
                            padding: EdgeInsets.symmetric(
                                horizontal: size.width * 0.02),
                            onPressed: () async{
                              await urlLauncherUtil.launchWeb(webUrl);

                            },
                            icon: Icon(
                              FontAwesomeIcons.arrowUpRightFromSquare,
                              color: Theme.of(context).canvasColor,
                              size: isMobile
                                  ? size.width * 0.07
                                  : size.width * 0.02,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
