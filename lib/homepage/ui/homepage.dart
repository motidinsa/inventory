import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/homepage/ui/item_type.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final AppController appController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: AppController.to.key,
      appBar: AppBar(
        title: const Text(
          'XYZ Company',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.bars,
            size: 20,
            // color: primaryColor(),
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
            print(appController.currentPages);
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/images/company-logo.png',
              ),
            ),
          ),
        ],
      ),
      // drawer: const Drawer(),
      body: ListView(
        children: [
          sizedBox(height: 10),
          ItemType(
            addItemName: customerN(),
            detailPageName: salesN(),
            title: salesN(),
          ),
          sizedBox(height: 30),
          ItemType(
            addItemName: 'Vendor',
            detailPageName: 'Purchase',
            title: 'Purchasing',
          ),
          sizedBox(height: 30),
          ItemType(
            addItemName: 'Product',
            detailPageName: 'Reorder Stock',
            title: 'Inventory',
          ),
          sizedBox(height: 20),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          //   child: ItemSelect(
          //     title: reportsN(),
          //     iconData: Icons.summarize_outlined,
          //   ),
          // )
        ],
      ),
    );
  }
}
