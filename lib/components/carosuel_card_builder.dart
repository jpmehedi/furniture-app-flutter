import 'package:flutter/material.dart';

class CarosuelCardBuilder extends StatelessWidget {
  const CarosuelCardBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 200,
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.centerRight,
              image: AssetImage("images/cult_living.png"),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Collection".toUpperCase(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "New",
                        style: TextStyle(
                          color: Color(0xff005DFF),
                          fontSize: 30,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Arrivals",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 30,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Lorem Ipsum Dolor Sit Amet, Consetetur Sadipscing Elitr, Sed Diam",
                        style: TextStyle(
                          color: Color(0xff707070),
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            "Shop NOW".toUpperCase(),
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 10,
                              letterSpacing: 3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            child: Divider(
                              color: Color(0xff005DFF),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30, left: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 5,
                              blurRadius: 30,

                              offset:
                                  Offset(5, 7), // changes position of shadow
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
