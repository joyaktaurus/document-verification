import 'package:flutter/material.dart';
import '../my_theme.dart';

class MATitleWithSeeAllButton extends StatelessWidget {
  final String title;
  final Function? seeAllOnTap;
  final Function? filterOnTap;
  final Widget? headingWidget;
  final EdgeInsets? margin;
  const MATitleWithSeeAllButton(
      {Key? key,
      required this.title,
      this.seeAllOnTap,
      this.filterOnTap,
      this.headingWidget,
      this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ??
          (seeAllOnTap == null
              ? const EdgeInsets.fromLTRB(12, 14, 12, 14)
              : const EdgeInsets.fromLTRB(12, 0, 8, 0)),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: MyTheme.regularTextStyle(
                fontWeight: FontWeight.w600, textSize: 16),
          ),
          seeAllOnTap == null
              ? Container()
              : GestureDetector(
                  onTap: seeAllOnTap == null
                      ? null
                      : () {
                          seeAllOnTap!();
                        },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                        color: MyTheme.primaryColor1,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
          filterOnTap == null
              ? Container()
              : GestureDetector(
                  onTap: filterOnTap == null
                      ? null
                      : () {
                          filterOnTap!();
                        },
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                        color: MyTheme.primaryColor1,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text(
                      'Today',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
          headingWidget == null ? Container() : Container(child: headingWidget)
        ],
      ),
    );
  }
}
