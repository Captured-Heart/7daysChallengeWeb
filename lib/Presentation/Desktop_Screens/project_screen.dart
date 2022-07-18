// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:seven_days_web/Presentation/Widgets/dashed_lines.dart';
// import 'package:seven_days_web/Presentation/Widgets/left_side_widget.dart';

// import '../../src/localization/locales.dart';
// import '../../src/sample_feature/desktop_screen.dart';
// import '../Widgets/bg_screen.dart';
// import '../Widgets/desktop_navbar_three.dart';

// class ProjectScreen extends StatelessWidget {
//   const ProjectScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     final textStyle = Theme.of(context).textTheme;
//     final text = AppLocales.of(context);
//     return Scaffold(
//       body: SevenDaysBG(
//           size: size,
//           navBar: DesktopNavBar3(
//             size: size,
//             navTitle: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: size.width * 0.05,
//                   child: Divider(
//                     color: IconTheme.of(context).color,
//                     thickness: 5,
//                     height: 25,
//                   ),
//                 ),
//                 Text(
//                   text.projects,
//                   style: Theme.of(context).textTheme.headline1,
//                 ),
//               ],
//             ),
//           ),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               //! SIDE BAR
//               SizedBox(
//                 width: size.width * 0.15,
//                 height: size.height * 0.97,
//                 child: LeftSideBarContent(size: size),
//               ),
//               SizedBox(
//                 width: 40,
//                 height: size.height,
//                 child: DashedLines(
//                   direction: Axis.vertical,
//                   height: 1,
//                   color: Theme.of(context).canvasColor,
//                 ),
//               ),
//               //! MAIN BODY
//               Expanded(
//                 child: Stack(
//                   fit: StackFit.expand,
//                   children: [
//                     Positioned(
//                       top: size.height * 0.23,
//                       child: CarouselProjectWidget(textStyle: textStyle, size: size),
//                     ),

//                     //
//                   ],
//                 ),
//               ),
//             ],
//           )

//           // ThirdScreen(size: size, text: text, textStyle: textStyle)

//           // IstScreen(size: size),
//           ),
//     );
//   }
// }
