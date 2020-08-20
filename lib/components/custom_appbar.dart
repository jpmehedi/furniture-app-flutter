import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends PreferredSize {
  final double height;
  CustomAppBar({this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: Color(0xffffffff),
      alignment: Alignment.center,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xffEAF3FE),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffE6EEFE),
                    spreadRadius: 0,
                    blurRadius: 1,
                    offset: Offset(1, 3), // changes position of shadow
                  ),
                ],
              ),
              width: 107,
              child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.alignLeft,
                  color: Colors.black,
                ),
                onPressed: () => _scaffoldKey.currentState.openDrawer(),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xffE6EEFE),
                        width: 4,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset('images/profile.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
