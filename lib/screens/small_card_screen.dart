import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gimig_gastro_application/classes/category_class.dart';
import 'package:gimig_gastro_application/components/cards/small_card.dart';
import 'package:gimig_gastro_application/components/elements/background_layout.dart';
import 'package:gimig_gastro_application/components/elements/side_navigationbar.dart';
import 'package:gimig_gastro_application/main/constants.dart';

class SmallCardScreen extends StatelessWidget {
  static const String id = 'small_card_screen';
  SmallCardScreen({this.category});
  final Category category;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: kBackgroundColor,
      body: Stack(
        // TODO ADD NAVIGATION ARROWS
        children: <Widget>[
          BackgroundLayout(
            name: category.title,
          ),
          GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            color: kScrollEffect,
            child: ListView(
              padding: EdgeInsets.only(top: 30, left: 125),
              children: List.generate(
                category.items.length,
                (index) => SmallCard(
                  item: category.items[index],
                ),
              ),
            ),
          ),
          SideNavigationBar(),
        ],
      ),
    );
  }
}
