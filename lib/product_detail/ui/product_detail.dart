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
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          smoothness: 1,
          side: BorderSide(color: Colors.grey.shade300, width: 2),
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Enter product name',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
          ),
          alignment: Alignment.center,
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
                  side: BorderSide(width: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add),
                      sizedBox(width: 10),
                      Text('Add image')
                    ],
                  )),
            ],
          ),
        ),
        SmoothContainer(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          smoothness: 1,
          side: BorderSide(color: Colors.grey.shade500, width: 2),
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: TextField(
              maxLines: 3,
              decoration: const InputDecoration(
                hintText: 'Description',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              // maxLines: 1,
            ),
          ),
          alignment: Alignment.center,
        ),
        sizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Category'),
            SmoothContainer(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              smoothness: 1,
              side: BorderSide(color: Colors.grey.shade500, width: 2),
              borderRadius: BorderRadius.circular(15),
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
              alignment: Alignment.center,
            ),
          ],
        ),
        sizedBox(height: 5),
        Row(
          children: [
            Text('Product ID'),
            sizedBox(width: 10),
            Expanded(
              child: SmoothContainer(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                smoothness: 1,
                side: BorderSide(color: Colors.grey.shade500, width: 2),
                borderRadius: BorderRadius.circular(15),
                child: TextField(
                  // maxLines: 3,
                  decoration: const InputDecoration(
                    // hintText: '',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  // maxLines: 1,
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
        sizedBox(height: 5),
        Row(
          children: [
            Expanded(child: Text('Cost: ETB 10',textAlign:TextAlign.center)),
            Expanded(
              child: Text('Cost: ETB 20',textAlign:TextAlign.center),
            )
          ],
        ),
        sizedBox(height: 5),
        Text('Quantity on hand: 80 pcs'),
        sizedBox(height: 5),
        Row(
          children: [
            Text('Reorder Qty'),
            sizedBox(width: 10),
            Expanded(
              child: SmoothContainer(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                smoothness: 1,
                side: BorderSide(color: Colors.grey.shade500, width: 2),
                borderRadius: BorderRadius.circular(15),
                child: TextField(
                  // maxLines: 3,
                  decoration: const InputDecoration(
                    // hintText: '',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  // maxLines: 1,
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
        sizedBox(height: 5),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('UoM'),
            SmoothContainer(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              smoothness: 1,
              side: BorderSide(color: Colors.grey.shade500, width: 2),
              borderRadius: BorderRadius.circular(15),
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
              alignment: Alignment.center,
            ),
          ],
        ),
        sizedBox(height:10),
        Row(
          children: [
            OutlinedButton(onPressed: (){}, child: Text('Save'),),
            sizedBox(width:10),
            OutlinedButton(onPressed: (){}, child: Text('Save'),),
          ],
        ),
      ],
    );
  }
}
