import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:smooth_corner/smooth_corner.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  final List<String> items = [
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
  ];
  final List<String> items2 = [
    'Pcs',
    'Kg',
    'Lt',
  ];
  String? selectedValue;
  String? selectedValue2;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SmoothContainer(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          smoothness: 1,
          side: BorderSide(color: Colors.grey.shade300, width: 2),
          borderRadius: BorderRadius.circular(15),
          alignment: Alignment.center,
          child: const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter product name',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
          ),
        ),
        sizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SmoothContainer(
                  width: 80,
                  height: 80,
                  side: const BorderSide(width: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.add),
                      sizedBox(width: 10),
                      const Text('Add image')
                    ],
                  )),
            ],
          ),
        ),
        SmoothContainer(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          smoothness: 1,
          side: BorderSide(color: Colors.grey.shade500, width: 2),
          borderRadius: BorderRadius.circular(15),
          alignment: Alignment.center,
          child: const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Description',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              // maxLines: 1,
            ),
          ),
        ),
        sizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Category'),
            SmoothContainer(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              smoothness: 1,
              side: BorderSide(color: Colors.grey.shade500, width: 2),
              borderRadius: BorderRadius.circular(15),
              alignment: Alignment.center,
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  isExpanded: true,
                  hint: Text(
                    'Select Item',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: items
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 40,
                    width: 140,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
        sizedBox(height: 5),
        Row(
          children: [
            const Text('Product ID'),
            sizedBox(width: 10),
            Expanded(
              child: SmoothContainer(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                smoothness: 1,
                side: BorderSide(color: Colors.grey.shade500, width: 2),
                borderRadius: BorderRadius.circular(15),
                alignment: Alignment.center,
                child: const TextField(
                  // maxLines: 3,
                  decoration: InputDecoration(
                    // hintText: '',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  // maxLines: 1,
                ),
              ),
            ),
          ],
        ),
        sizedBox(height: 5),
        const Row(
          children: [
            Expanded(child: Text('Cost: ETB 10',textAlign:TextAlign.center)),
            Expanded(
              child: Text('Cost: ETB 20',textAlign:TextAlign.center),
            )
          ],
        ),
        sizedBox(height: 5),
        const Text('Quantity on hand: 80 pcs'),
        sizedBox(height: 5),
        Row(
          children: [
            const Text('Reorder Qty'),
            sizedBox(width: 10),
            Expanded(
              child: SmoothContainer(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                smoothness: 1,
                side: BorderSide(color: Colors.grey.shade500, width: 2),
                borderRadius: BorderRadius.circular(15),
                alignment: Alignment.center,
                child: const TextField(
                  // maxLines: 3,
                  decoration: InputDecoration(
                    // hintText: '',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  // maxLines: 1,
                ),
              ),
            ),
          ],
        ),
        sizedBox(height: 5),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('UoM'),
            SmoothContainer(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              smoothness: 1,
              side: BorderSide(color: Colors.grey.shade500, width: 2),
              borderRadius: BorderRadius.circular(15),
              alignment: Alignment.center,
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  isExpanded: true,
                  hint: Text(
                    'Select Item',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  items: items2
                      .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
                      .toList(),
                  value: selectedValue2,
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue2 = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 40,
                    width: 140,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
        sizedBox(height:10),
        Row(
          children: [
            OutlinedButton(onPressed: (){}, child: const Text('Save'),),
            sizedBox(width:10),
            OutlinedButton(onPressed: (){}, child: const Text('Save'),),
          ],
        ),
      ],
    );
  }
}
