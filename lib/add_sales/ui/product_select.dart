// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
//
// class ProductSelect extends StatefulWidget {
//   const ProductSelect({super.key});
//
//   @override
//   State<ProductSelect> createState() => _ProductSelectState();
// }
//
// class _ProductSelectState extends State<ProductSelect> {
//   final List<String> items = [
//     'A_Item1',
//     'A_Item2',
//     'A_Item3',
//     'A_Item4',
//     'B_Item1',
//     'B_Item2',
//     'B_Item3',
//     'B_Item4',
//   ];
//   String? selectedValue;
//   final TextEditingController textEditingController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           flex: 2,
//           child: DropdownButtonHideUnderline(
//             child: DropdownButton2<String>(
//               isExpanded: true,
//               hint: Text(
//                 'Select Item',
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Theme.of(context).hintColor,
//                 ),
//               ),
//               items: items
//                   .map((item) => DropdownMenuItem(
//                         value: item,
//                         child: Text(
//                           item,
//                           style: const TextStyle(
//                             fontSize: 14,
//                           ),
//                         ),
//                       ))
//                   .toList(),
//               value: selectedValue,
//               onChanged: (value) {
//                 setState(() {
//                   selectedValue = value;
//                 });
//               },
//               buttonStyleData: const ButtonStyleData(
//                 padding: EdgeInsets.symmetric(horizontal: 16),
//                 height: 40,
//                 width: 200,
//               ),
//               dropdownStyleData: const DropdownStyleData(
//                 maxHeight: 200,
//               ),
//               menuItemStyleData: const MenuItemStyleData(
//                 height: 40,
//               ),
//               dropdownSearchData: DropdownSearchData(
//                 searchController: textEditingController,
//                 searchInnerWidgetHeight: 50,
//                 searchInnerWidget: Container(
//                   height: 50,
//                   padding: const EdgeInsets.only(
//                     top: 8,
//                     bottom: 4,
//                     right: 8,
//                     left: 8,
//                   ),
//                   child: TextFormField(
//                     expands: true,
//                     maxLines: null,
//                     controller: textEditingController,
//                     decoration: InputDecoration(
//                       isDense: true,
//                       contentPadding: const EdgeInsets.symmetric(
//                         horizontal: 10,
//                         vertical: 8,
//                       ),
//                       hintText: 'Search for an item...',
//                       hintStyle: const TextStyle(fontSize: 12),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                   ),
//                 ),
//                 searchMatchFn: (item, searchValue) {
//                   return item.value.toString().contains(searchValue);
//                 },
//               ),
//               //This to clear the search value when you close the menu
//               onMenuStateChange: (isOpen) {
//                 if (!isOpen) {
//                   textEditingController.clear();
//                 }
//               },
//             ),
//           ),
//         ),
//         const Expanded(
//             child: Text(
//           '3',
//           textAlign: TextAlign.center,
//         )),
//         const Expanded(
//             child: Text(
//           '3',
//           textAlign: TextAlign.center,
//         )),
//         const Expanded(
//           child: Text(
//             '3',
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ],
//     );
//   }
// }
