import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_app/components/custom_appbar.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: CustomAppBar(
          height: 40,
          child: Container(
            margin: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Cart'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                PopupMenuButton(
                  icon: Icon(FontAwesomeIcons.ellipsisH),
                  elevation: 4,
                  offset: Offset(3, 4),
                  onSelected: (value) {
                    print(value);
                  },
                  itemBuilder: (BuildContext context) {
                    return [
                      PopupMenuItem(
                        child: Text("Share"),
                        value: 'Share',
                      ),
                      PopupMenuItem(
                        child: Text("Rating"),
                        value: 'Rating',
                      ),
                      PopupMenuItem(
                        child: Text("Share"),
                        value: 'Share',
                      ),
                    ];
                  },
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CartBottomBar(),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          ShopItemCartBuilder(
                            image: Image.asset('images/armchair.png'),
                            productName: 'Nashville Armchair',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ShopItemCartBuilder(
                            image: Image.asset('images/ellingtonchair.png'),
                            productName: 'Ellington Office Chair',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ShopItemCartBuilder(
                            image: Image.asset('images/chairpink.png'),
                            productName: 'Elisa Wingback Chair',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ShopItemCartBuilder(
                            image: Image.asset('images/corner_shopa.png'),
                            productName: 'Chaise Corner Sofa',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ShopItemCartBuilder(
                            image: Image.asset('images/chairpink.png'),
                            productName: 'Chaise Corner Sofa',
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CartBottomBar extends StatelessWidget {
  const CartBottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffE9F2FE),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Total Price For 4 Item(s)'),
                  Text(
                    '₹‭99,241‬',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 140,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.blue,
                onPressed: () {},
                child: Text(
                  'Buy Now'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShopItemCartBuilder extends StatelessWidget {
  const ShopItemCartBuilder({Key key, this.image, this.productName})
      : super(key: key);

  final Widget image;
  final String productName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffffffff),
        boxShadow: [
          BoxShadow(
            color: Color(0xffEDF9F9),
            spreadRadius: 6,
            blurRadius: 10,
            offset: Offset(7, 7), // changes position of shadow
          ),
        ],
      ),
      width: double.infinity,
      height: 131,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.only(top: 8, right: 8),
                child: image,
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      productName,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Quantity : 1",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Color: Royal Blue",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.delete,
                          color: Colors.blue,
                        ),
                        Text(
                          'Remove'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 3,
                              color: Colors.blue),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "₹1,895",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
