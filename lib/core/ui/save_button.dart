import 'package:flutter/material.dart';
import 'package:my_inventory/core/functions/core_functions.dart';

import '../constants/name_constants.dart';

class SaveButton extends StatelessWidget {
  final String redirectFrom;

  const SaveButton({
    super.key,
    required this.redirectFrom,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () async {
                await unFocus();
                // print(addProductController
                //     .productInfo.value.description);
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  backgroundColor: Colors.green.shade50),
              child: Text(
                saveN(),
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
