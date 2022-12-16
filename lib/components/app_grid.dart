import 'package:dj_scanner/my_theme.dart';
import 'package:flutter/material.dart';

class MAGridView extends StatelessWidget {
  const MAGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      children: <Widget>[
        Card(
            color: const Color(0XFF1FA543),
            margin: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text('30',
                            style: MyTheme.regularTextStyle(
                                color: Colors.white,
                                textSize: 50,
                                fontWeight: FontWeight.bold))),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Entry ',
                      style: MyTheme.regularTextStyle(
                          color: Colors.white,
                          textSize: 14,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )),
        Card(
            color: const Color(0XFFFF5153),
            margin: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text('6',
                            style: MyTheme.regularTextStyle(
                                color: Colors.white,
                                textSize: 50,
                                fontWeight: FontWeight.bold))),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Rejected',
                      style: MyTheme.regularTextStyle(
                          color: Colors.white,
                          textSize: 14,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )),
        Card(
            color: const Color(0XFF585858),
            margin: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text('0',
                            style: MyTheme.regularTextStyle(
                                color: Colors.white,
                                textSize: 50,
                                fontWeight: FontWeight.bold))),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Blacklist',
                      style: MyTheme.regularTextStyle(
                          color: Colors.white,
                          textSize: 14,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )),
      ],
    );
  }
}
