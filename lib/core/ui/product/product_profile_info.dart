import 'package:flutter/material.dart';
import 'package:smooth_corner/smooth_corner.dart';

import 'package:my_inventory/core/constants/widget_constants.dart';

import '../../model/page_name_enum.dart';
import '../../styles/styles.dart';

class ProductProfileInfo extends StatelessWidget {
  final PageName page;

  const ProductProfileInfo({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            children: [
              Spacer(),
              Expanded(
                child: Align(
                  // alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Date: ',
                          style: TextStyle(
                            fontWeight: bold(),
                            fontSize: 18,
                            color: Colors.orange,
                            fontStyle: FontStyle.italic,
                          ),
                          // style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Feb 17th, 2024',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 16,
                              ),
                            ),
                            // TextSpan(text: ' world!'),
                          ],
                        ),
                      )
                      // Row(
                      //   mainAxisSize: MainAxisSize.min,
                      //
                      //   children: [
                      //     const Text(
                      //       'Date',
                      //       style: TextStyle(color: Colors.orange),
                      //     ),
                      //     sizedBox(width: 10),
                      //     const Text('Feb 17th, 2024',)
                      //   ],
                      // ),
                      ,
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Ref',
                            textAlign: TextAlign.start,
                            style: TextStyle(color: Colors.orange),
                          ),
                          sizedBox(width: 10),
                          SmoothContainer(
                              padding: const EdgeInsets.all(5),
                              side: const BorderSide(width: 2),
                              child: const Text('SO-0097'))
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        // sizedBox(height: 10),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Customer:'),
            sizedBox(width: 20),
            SmoothContainer(
              padding: const EdgeInsets.all(5),
              side: const BorderSide(width: 2),
              child: Row(
                children: [
                  const Text('Alen Smith'),
                  sizedBox(width: 20),
                  const Icon(Icons.people)
                ],
              ),
            )
          ],
        ),
        sizedBox(height: 10),
        const Text('Customer details:'),
        sizedBox(height: 5),
        const Text('Tel: 09785836845'),
        sizedBox(height: 5),
        const Text('Email: xyz@gmail.com'),
      ],
    );
  }
}
