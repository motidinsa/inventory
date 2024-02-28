import 'package:flutter/material.dart';
import 'package:smooth_corner/smooth_corner.dart';

import '../../constants/widget_constants.dart';

class ProductProfileInfo extends StatelessWidget {
  const ProductProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Row(
            children: [
              const Text('Sales'),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Date',
                            style: TextStyle(color: Colors.orange),
                          ),
                          sizedBox(width: 10),
                          const Text('Feb 17th, 2024')
                        ],
                      ),
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
