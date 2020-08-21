import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_app/cart_screen.dart';
import 'package:furniture_app/components/carosuel_card_builder.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:furniture_app/components/custom_appbar.dart';
import 'components/bootm_bar.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xffFEFFFF),
        drawer: Drawer(),
        appBar: CustomAppBar(
          height: 50,
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
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.alignLeft,
                        color: Colors.black,
                      ),
                      onPressed: () => _scaffoldKey.currentState.openDrawer(),
                    ),
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
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          backgroundColor: Colors.blue,
          child: Icon(
            FontAwesomeIcons.bookmark,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBar(
          onTapHome: () {},
          onTapProduct: () {
            Route route = MaterialPageRoute(builder: (context) => CartScreen());
            Navigator.push(context, route);
          },
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("images/rectangle.png"),
              ),
            ),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffE6EEFE),
                            spreadRadius: 5,
                            blurRadius: 30,
                            offset: Offset(5, 7), // changes position of shadow
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      height: 200,
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              CarosuelCardBuilder(),
                              CarosuelCardBuilder(),
                              CarosuelCardBuilder(),
                              CarosuelCardBuilder(),
                            ],
                          );
                        },
                        layout: SwiperLayout.DEFAULT,
                        itemCount: 4,
                        autoplay: true,
                        pagination: SwiperPagination(
                          margin: EdgeInsets.only(
                            left: 180,
                            bottom: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, top: 20, bottom: 20, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Best Selling".toUpperCase(),
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          letterSpacing: 3,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: SellingCardBuilder(
                              image: Image.asset('images/chairpink.png'),
                              productName: 'Wingback Chair',
                              description: 'Modern Saddle Arms and Women Legs',
                              price: '₹1,512',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: SellingCardBuilder(
                              image: Image.asset('images/armchair.png'),
                              productName: 'Nashville Armchair',
                              description: 'Modern Saddle Arms and Women Legs',
                              price: '₹1,895',
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffE6EEFE),
                            spreadRadius: 5,
                            blurRadius: 30,
                            offset: Offset(5, 7), // changes position of shadow
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(left: 20),
                      height: 292,
                      child: Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              SellingCardBuilder(
                                image: Image.asset('images/armchair.png'),
                                productName: 'Nashville Armchair',
                                description:
                                    'Modern Saddle Arms and Women Legs',
                                price: '₹1,895',
                              ),
                              SellingCardBuilder(
                                image: Image.asset('images/chairpink.png'),
                                productName: 'Wingback Chair',
                                description:
                                    'Modern Saddle Arms and Women Legs',
                                price: '₹1,512',
                              ),
                              SellingCardBuilder(
                                image: Image.asset('images/armchair.png'),
                                productName: 'Nashville Armchair',
                                description:
                                    'Modern Saddle Arms and Women Legs',
                                price: '₹1,895',
                              ),
                            ],
                          );
                        },
                        layout: SwiperLayout.DEFAULT,
                        itemCount: 3,
                        autoplay: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SellingCardBuilder extends StatelessWidget {
  const SellingCardBuilder(
      {Key key, this.image, this.productName, this.price, this.description})
      : super(key: key);

  final Widget image;
  final String productName;
  final String price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 292,
      child: Stack(
        children: <Widget>[
          Container(
            width: 150,
            height: 272,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffE6EEFE),
                  spreadRadius: 5,
                  blurRadius: 30,
                  offset: Offset(5, 7), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  image,
                  Text(
                    productName,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 10,
                      color: Color(0xff707070),
                    ),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff005DFF),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 245,
            left: 125,
            child: Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                FontAwesomeIcons.bookmark,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
