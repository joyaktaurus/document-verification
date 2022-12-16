import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../my_theme.dart';
import '../utils/my_utils.dart';

//======My App Dialogue Custom Background ====

class MADialogueBackground extends StatelessWidget {
  final dynamic dialogue;
  const MADialogueBackground({Key? key, required this.dialogue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(color: const Color(0xff407BFF).withOpacity(0.8)
          // image: DecorationImage(
          //   opacity: .8,
          //   image: AssetImage("assets/images/sidebar-bg.jpg"),
          //   fit: BoxFit.cover,
          // ),
          ),
      child: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(
                // gradient: LinearGradient(
                //   transform: const GradientRotation(5.142857142857143),
                //   begin: Alignment.topLeft,
                //   colors: [
                //     const Color(0XFF481F87).withOpacity(.8),
                //     const Color(0XFF8E4741).withOpacity(.8)
                //   ],
                // ),
                color: const Color(0xff407BFF).withOpacity(.67)),
          ),
          Center(child: dialogue),
        ],
      ),
    );
  }
}

//====== Common Dialogue Contents ============
class MADialogues {
  Widget commonDialog({
    required String heading,
    required Widget dialogContent,
    double height = 320,
    double headingSize = 15,
  }) {
    return StatefulBuilder(
      builder: (context, setState) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.all(12),
            height: height,
            width: Get.width * 0.75,
            child: Material(
              borderRadius: BorderRadius.circular(15),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Icons.close),
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(
                            height: 12,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              heading.toString(),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: MyTheme.regularTextStyle(
                                fontWeight: FontWeight.bold,
                                textSize: headingSize,
                              ),
                            ),
                          ),
                          dialogContent
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  static dialog(context,
      {String message = '',
      Function? onDismiss,
      Widget? widgetContent,
      Function? stateChangeFn}) async {
    await showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: false,
      barrierColor: Colors.black26,
      transitionDuration: const Duration(milliseconds: 180),
      context: context,
      pageBuilder: (_, __, ___) {
        return widgetContent!;
      },
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
              .animate(anim),
          child: GestureDetector(
              onTap: () {
                MyUtils.hideKeyboard();
              },
              child: child),
        );
      },
    );
    await onDismiss!();
  }
}
