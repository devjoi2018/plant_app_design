import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_aplication_test/widgets/mediaquerys_widget.dart';

class HomePage extends StatefulWidget {
  static final routeName = 'homePage';

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: mediaHeight(context) * 0.55,
              child: Stack(
                children: <Widget>[
                  _bodyHomePage(context),
                  Positioned(
                    left: mediaHeight(context) * 0.15,
                    top: mediaHeight(context) * 0.15,
                    child: Image.asset(
                      'assets/images/Plant.png',
                      height: mediaHeight(context) * 0.40,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mediaHeight(context) * 0.020,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: mediaHeight(context) * 0.030,
                right: mediaHeight(context) * 0.030,
              ),
              child: _information(context),
            ),
            SizedBox(
              height: mediaHeight(context) * 0.020,
            ),
            _bottomInformation(context),
          ],
        ),
      ),
    );
  }

  Widget _bodyHomePage(BuildContext context) {
    return _topCard(context);
  }

  Widget _topCard(BuildContext context) {
    final Color _darkGreen = Color(0xff498C69);
    final Color _ligthGreen = Color(0xffABD8BE);
    final Color _whiteColor = Colors.white;
    final TextStyle _titleText = TextStyle(
      fontSize: mediaHeight(context) * 0.022,
      fontWeight: FontWeight.w300,
      color: _whiteColor,
    );
    final TextStyle _subtitleText = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: mediaHeight(context) * 0.022,
      color: _whiteColor,
    );
    return Material(
      shadowColor: _darkGreen.withOpacity(1.0),
      borderRadius: BorderRadius.circular(mediaHeight(context) * 0.050),
      elevation: mediaHeight(context) * 0.020,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(mediaHeight(context) * 0.020),
        height: mediaHeight(context) * 0.50,
        width: mediaWidth(context),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [_darkGreen, _ligthGreen],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(mediaHeight(context) * 0.050),
            bottomRight: Radius.circular(mediaHeight(context) * 0.050),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              /// Top Bottoms
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.arrow_back_ios,
                    color: _whiteColor,
                    size: mediaHeight(context) * 0.030,
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: _whiteColor,
                    size: mediaHeight(context) * 0.030,
                  ),
                ],
              ),
              Text(
                'Kentia',
                style: TextStyle(
                  fontSize: mediaHeight(context) * 0.040,
                  color: _whiteColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Price',
                    style: _titleText,
                  ),
                  Text(
                    '23,-',
                    style: _subtitleText,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Height',
                    style: _titleText,
                  ),
                  Text(
                    '150 cm',
                    style: _subtitleText,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Category',
                    style: _titleText,
                  ),
                  Text(
                    'Indoor plant',
                    style: _subtitleText,
                  ),
                ],
              ),
              Material(
                borderRadius:
                    BorderRadius.circular(mediaHeight(context) * 0.015),
                shadowColor: Colors.white,
                elevation: 8.0,
                color: Colors.transparent,
                child: Container(
                  alignment: Alignment.center,
                  height: mediaHeight(context) * 0.050,
                  width: mediaWidth(context) * 0.30,
                  decoration: BoxDecoration(
                    color: _whiteColor,
                    borderRadius:
                        BorderRadius.circular(mediaHeight(context) * 0.015),
                  ),
                  child: Text(
                    '+ Add to cart',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: mediaHeight(context) * 0.022,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _information(BuildContext context) {
    final Color _bottomColor = Color(0xffAEAEAE);
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Information',
              style: TextStyle(
                fontSize: mediaHeight(context) * 0.045,
              ),
            ),
            Material(
              elevation: mediaHeight(context) * 0.008,
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(
                mediaHeight(context) * 0.015,
              ),
              child: Container(
                height: mediaHeight(context) * 0.040,
                width: mediaWidth(context) * 0.20,
                decoration: BoxDecoration(
                  color: _bottomColor,
                  borderRadius: BorderRadius.circular(
                    mediaHeight(context) * 0.015,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.share,
                      color: Colors.white,
                      size: mediaHeight(context) * 0.025,
                    ),
                    Text(
                      'Share',
                      style: TextStyle(
                        fontSize: mediaHeight(context) * 0.022,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: mediaHeight(context) * 0.020,
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ultricies, eu dictum lectus blandit et. Mauris vitae tellus vel dolor tempus venenatis. Phasellus ornare ex urna, sed tristique velit tristique in.',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: mediaHeight(context) * 0.022,
          ),
        ),
      ],
    );
  }

  Widget _bottomInformation(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: mediaHeight(context) * 0.030,
            right: mediaHeight(context) * 0.030,
          ),
          child: _specifications(context),
        ),
        _cardWithBottoms(context),
      ],
    );
  }

  Widget _specifications(BuildContext context) {
    final TextStyle _specificationStyle = TextStyle(
      fontSize: mediaHeight(context) * 0.022,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Specifications',
          style: TextStyle(
            fontSize: mediaHeight(context) * 0.035,
          ),
        ),
        SizedBox(
          height: mediaHeight(context) * 0.020,
        ),
        Text(
          'Suitable for: inside',
          style: _specificationStyle,
        ),
        Text(
          'Leaf color: green',
          style: _specificationStyle,
        ),
        Text(
          'Maintenance: easy',
          style: _specificationStyle,
        ),
        Text(
          'Height: 150cm - 180cm',
          style: _specificationStyle,
        ),
      ],
    );
  }

  Widget _cardWithBottoms(BuildContext context) {
    final Color _cardColor = Color(0xffABD8BE);
    final Color _whiteColor = Colors.white;
    return Container(
      height: mediaHeight(context) * 0.22,
      width: mediaWidth(context) * 0.40,
      decoration: BoxDecoration(
        color: _cardColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(mediaHeight(context) * 0.050),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ListTile(
            title: Text(
              'location in the sun',
              style: TextStyle(
                  color: _whiteColor, fontSize: mediaHeight(context) * 0.017),
            ),
            leading: Icon(
              Icons.wb_sunny,
              color: _whiteColor,
              size: mediaHeight(context) * 0.040,
            ),
          ),
          ListTile(
            title: Text(
              '2x p.m. water',
              style: TextStyle(
                  color: _whiteColor, fontSize: mediaHeight(context) * 0.017),
            ),
            leading: Icon(
              Icons.opacity,
              color: _whiteColor,
              size: mediaHeight(context) * 0.040,
            ),
          ),
          ListTile(
            title: Text(
              'room temperature',
              style: TextStyle(
                  color: _whiteColor, fontSize: mediaHeight(context) * 0.017),
            ),
            leading: Icon(
              Icons.lightbulb_outline,
              color: _whiteColor,
              size: mediaHeight(context) * 0.040,
            ),
          ),
        ],
      ),
    );
  }
}
