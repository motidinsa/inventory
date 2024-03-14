import 'package:expandable/expandable.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';

import '../../styles/styles.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ExpandedTile(
              expansionDuration: Duration(milliseconds: 300),
              contentseparator: 4,
              theme: ExpandedTileThemeData(
                  headerColor: Colors.transparent,
                  headerPadding: EdgeInsets.symmetric(horizontal: 24),
                  contentBackgroundColor: Colors.transparent,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16)),
              controller: ExpandedTileController(),
              title: const ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("this is the title"),
                contentPadding: EdgeInsets.zero,
              ),
              content: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Card(
                  color: Colors.green.shade50,
                  child: ListTile(
                    onTap: () => {},
                    // contentPadding: EdgeInsets.zero,
                    shape: SmoothRectangleBorder(
                      borderRadius: smoothBorderRadius(),
                    ),
                    title: Text(
                      'data',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
