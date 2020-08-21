import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatelessWidget {
  BottomBar({this.onTapHome, this.onTapProduct});
  final Function onTapHome;
  final Function onTapProduct;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 65.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
          color: Color(0xffF3F8FF),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MaterialButton(
                    onPressed: onTapHome,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.home,
                          color: Colors.blue,
                          size: 25,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MaterialButton(
                    onPressed: onTapProduct,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.cartPlus,
                          color: Colors.grey,
                          size: 25,
                        ),
                        Text(
                          "Shop",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
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
