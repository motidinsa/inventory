import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/homepage/ui/item_type.dart';

import '../../core/controller/app_controller.dart';
import '../../core/functions/image/image_functions.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final AppController appController = AppController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appController.companyName,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800),
        ),
        leading: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.bars,
            size: 20,
            color: Colors.grey.shade800,
          ),
          onPressed: () async {
            // final directory = await getApplicationDocumentsDirectory();
            // final dir = directory.parent.path;
            // String pdfDirectory = '$dir/app_flutter';
            // final myDir = Directory(pdfDirectory);
            //  await FolderFileSaver.saveFileIntoCustomDir(
            //     filePath:  '${directory.path}/backup.isar',
            // dirNamed: '/',
            // );
            //
            // print(myDir.listSync(recursive: true, followLinks: false));
            // try {
            //   await Gal.putImage(
            //       '/data/user/0/com.inventory.my_inventory/app_flutter/default.isar',
            //       album: appNameN);
            // } on GalException catch (e) {
            //   log(e.type.message);
            // }
            // static Future<String> getExternalDocumentPath() async {
            // To check whether permission is given for this app or not.
            // await Permission.location.request();
            // final result = GallerySaver.saveImage(
            //         '/data/data/com.inventory.my_inventory/cache/scaled_bf97b623-512a-4578-93f1-5db5369d8d8e3013635557314530898.jpg',
            //         albumName: 'aaa')
            //     .then((bool? sa) {
            //   print(sa);
            // setState(() {
            //   firstButtonText = 'image saved!';
            // });
            // });
            // var status = await Permission.storage.status;
            // if (!status.isGranted) {
            //   // If not we will ask for permission first
            //   await Permission.photos.request();
            // }
            // Directory _directory = Directory("");
            // if (Platform.isAndroid) {
            //   // Redirects it to download folder in android
            //   _directory = Directory("/storage/emulated/0/Mine");
            // } else {
            //   _directory = await getApplicationDocumentsDirectory();
            // }
            //
            // final exPath = _directory.path;
            // print("Saved Path: $exPath");
            // await Directory(exPath).create(recursive: true);
            // return exPath;

            Scaffold.of(context).openDrawer();
            // String? result;
            // try {
            //   // setState(() {
            //   //   _isBusy = true;
            //   // });
            //   // final data = useData ? await _currentFile!.readAsBytes() : null;
            //   final params = SaveFileDialogParams(
            //     sourceFilePath:
            //         '/data/data/com.inventory.my_inventory/cache/scaled_bf97b623-512a-4578-93f1-5db5369d8d8e3013635557314530898.jpg',
            //     // data: data,
            //     // localOnly: true,
            //     // fileName: useData ? "untitled" : null
            //   );
            //   result = await FlutterFileDialog.saveFile(params: params);
            //   print(result);
            // } on PlatformException catch (e) {
            //   print(e);
            // } finally {
            //   // setState(() {
            //   //   _savedFilePath = result ?? _savedFilePath;
            //   //   _isBusy = false;
            //   // });
            // }

            // await FileSaver.instance.saveFile( name: 'test',filePath: '/data/data/com.inventory.my_inventory/app_flutter/default.isar',);
          },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              backgroundImage: appController.companyLogo != null
                  ? imageExists(
                      imagePath: appController.companyLogo!,
                    )
                      ? FileImage(
                          File(appController.companyLogo!),
                        )
                      : null
                  : null,
            ),
          ),
        ],
      ),
      // drawer: const Drawer(),
      body: ListView(
        children: [
          sizedBox(height: 5),
          ItemType(
            title: salesN,
            addItemName: customerN,
            detailPageName: salesN,
          ),
          sizedBox(height: 15),
          ItemType(
            title: purchasingN,
            addItemName: vendorN,
            detailPageName: purchaseN,
          ),
          sizedBox(height: 15),
          ItemType(
            title: inventoryN,
            addItemName: productN,
            detailPageName: reorderStockN,
          ),
          sizedBox(height: 20),
        ],
      ),
    );
  }
}
