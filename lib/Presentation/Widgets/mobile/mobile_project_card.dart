import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seven_days_web/src/utils/url_launcher.dart';

import '../../../src/utils/color_constant.dart';
import '../dashed_lines.dart';

class MobileProjectListCard extends StatelessWidget {
  MobileProjectListCard({
    Key? key,
    required this.size,
    this.title,
    this.gitUrl,
    this.webUrl,
    this.content,
    this.imgUrl,
    this.date,
  }) : super(key: key);

  final Size size;
  final String? title, gitUrl, webUrl, content, imgUrl;
  final DateTime? date;
  final UrlLauncherUtil urlLauncherUtil = UrlLauncherUtil();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //! TITLE
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  width: 20,
                ),
                // Text(gitUrl.toString()),
                // Text(webUrl!),
                // Text(date.toString()),

                //TODO: ADD URLlINK TO SOCIAL ICONS
                IconButton(
                    onPressed: () async {
                      await urlLauncherUtil.launchWeb(webUrl!);
                    },
                    icon: const Icon(
                      FontAwesomeIcons.arrowUpRightFromSquare,
                    ))
              ],
            ),
          ),

          //! STACK
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              //! BACKGROUND IMAGE
              SizedBox(
                height: size.height * 0.32,
                width: size.width * 0.85,
                child: CachedNetworkImage(
                  imageUrl: imgUrl!,
                  height: size.height * 0.32,
                  width: size.width * 0.4,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const Align(
                    alignment: Alignment.bottomRight,
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),

              //! STACKED FRONT CARD
              MobileProjectLeftCard(
                size: size,
                contents: content!,
                webUrl: webUrl!,
                gitUrl: gitUrl!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileProjectLeftCard extends StatelessWidget {
   MobileProjectLeftCard({
    Key? key,
    required this.size,
    required this.contents, required this.webUrl, required this.gitUrl,
  }) : super(key: key);

final UrlLauncherUtil urlLauncherUtil = UrlLauncherUtil();
  final Size size;
  final String contents, webUrl, gitUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.03,
                right: size.width * 0.06,
                top: size.height * 0.02,
                bottom: size.height * 0.02,
              ),
              child: AutoSizeText(
                contents,
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      color: ColorConstant.darkBgColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.63,
            child: DashedLines(
              direction: Axis.horizontal,
              height: 2,
              color: Theme.of(context).highlightColor,
            ),
          ),
          SizedBox(
            height: size.height * 0.07,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () async{
                  await  urlLauncherUtil.launchWeb(gitUrl);
                  },
                  icon: Icon(
                    FontAwesomeIcons.github,
                    color: Theme.of(context).canvasColor,
                  ),
                ),
                IconButton(
                  onPressed: () async{
                   await urlLauncherUtil.launchWeb(webUrl);
                  },
                  icon: Icon(
                    FontAwesomeIcons.arrowUpRightFromSquare,
                    color: Theme.of(context).canvasColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
