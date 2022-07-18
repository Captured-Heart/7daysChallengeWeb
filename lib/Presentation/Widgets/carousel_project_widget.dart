import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CarouselProjectWidget extends StatelessWidget {
  const CarouselProjectWidget({
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

  @override
  Widget build(BuildContext context) {
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
            height: size.height * 0.55,
            width: size.width * 0.5,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.45,
                  width: size.width,
                  child: Image.network(
                    imgUrl,
                    // 'https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?auto=compress&cs=tinysrgb&w=400',
                    height: size.height * 0.45,
                    width: size.width,
                    fit: BoxFit.cover,
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
                              FontAwesomeIcons.arrowUpRightFromSquare,
                              color: Theme.of(context).canvasColor,
                              size: size.width * 0.02,
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
