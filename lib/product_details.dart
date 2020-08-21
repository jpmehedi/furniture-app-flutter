import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAddToCartButton(),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("images/rectangle.png"),
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
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
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.bookmark,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 150,
                  child: Image.asset('images/armchair_long.png'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 60,
                        height: 70,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffE6EEFE),
                              spreadRadius: 4,
                              blurRadius: 3,
                              offset:
                                  Offset(6, 6), // changes position of shadow
                            ),
                          ],
                          shape: BoxShape.rectangle,
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset('images/armchair.png'),
                      ),
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            Colors.grey.withOpacity(0.4), BlendMode.dstATop),
                        child: Container(
                          child: Image.asset('images/arm2.png'),
                        ),
                      ),
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            Colors.grey.withOpacity(0.4), BlendMode.dstATop),
                        child: Container(
                          child: Image.asset('images/arm4.png'),
                        ),
                      ),
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            Colors.grey.withOpacity(0.4), BlendMode.dstATop),
                        child: Container(
                          child: Image.asset('images/arm5.png'),
                        ),
                      ),
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            Colors.grey.withOpacity(0.4), BlendMode.dstATop),
                        child: Container(
                          child: Image.asset('images/arm4.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Nashville Armchair',
                        style: TextStyle(fontSize: 26, color: Colors.black),
                      ),
                      Text(
                        '₹1,895',
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Color:",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.pink,
                                              style: BorderStyle.solid,
                                            )),
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: 20,
                                            height: 20,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.pink,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.green,
                                        ),
                                        child: null,
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.orange,
                                        ),
                                        child: null,
                                      ),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.purple,
                                        ),
                                        child: null,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Quantity:",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      RawMaterialButton(
                                        onPressed: () {
                                          setState(() {
                                            quantity++;
                                          });
                                        },
                                        constraints: BoxConstraints(
                                          maxHeight: 30,
                                          maxWidth: 30,
                                        ),
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Color(0xffE9F2FE),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                              child: Text(
                                            '+',
                                            style: TextStyle(fontSize: 20),
                                          )),
                                        ),
                                      ),
                                      Text(
                                        quantity.toString(),
                                      ),
                                      RawMaterialButton(
                                        onPressed: () {
                                          setState(() {
                                            quantity--;
                                          });
                                        },
                                        constraints: BoxConstraints(
                                          maxHeight: 30,
                                          maxWidth: 30,
                                        ),
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Color(0xffE9F2FE),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                              child: Text(
                                            '-',
                                            style: TextStyle(fontSize: 20),
                                          )),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        'A contemporary twist on classic mid-century modern design, the Nashville armchair is upholstered in royal blue velvet and brings an air of sophistication to your living space. Available in a choice of rich velvet...',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
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

class BottomAddToCartButton extends StatelessWidget {
  const BottomAddToCartButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                FontAwesomeIcons.shoppingCart,
                color: Color(0xffffffff),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'Add To Cart'.toUpperCase(),
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
