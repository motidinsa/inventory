// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:my_inventory/core/constants/widget_constants.dart';
// import 'package:my_inventory/customer/ui/single_user_detail.dart';
// import 'package:smooth_corner/smooth_corner.dart';
//
// class CustomerDetail extends StatelessWidget {
//   const CustomerDetail({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 3,
//         shadowColor: Colors.grey,
//         title: const Text('Customer detail'),
//          leading: IconButton(
//             icon: const FaIcon(
//               FontAwesomeIcons.arrowLeft,
//               size: 20,
//               color: Colors.teal,
//             ),
//             onPressed: () {
//
//             },
//           )
//       ),
//       body: ListView(
//         children: [
//           SmoothContainer(
//             margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             smoothness: 1,
//             side: BorderSide(color: Colors.green.shade300, width: 2),
//             borderRadius: BorderRadius.circular(15),
//             alignment: Alignment.center,
//             child: Row(
//               children: [
//                 const Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 30.0),
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Enter customer name',
//                         hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
//                         border:
//                             UnderlineInputBorder(borderSide: BorderSide.none),
//                       ),
//                       style: TextStyle(
//                           fontSize: 18, fontWeight: FontWeight.bold),
//                       maxLines: 1,
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(
//                     Icons.search,
//                     size: 24,
//                     color: Colors.teal,
//                   ),
//                   onPressed: () {},
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 5,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SmoothContainer(
//                 padding: const EdgeInsets.all(10),
//                 color: Colors.grey.shade300,
//                 smoothness: 1,
//                 side: BorderSide(color: Colors.green.shade300, width: 2),
//                 borderRadius: BorderRadius.circular(10),
//                 alignment: Alignment.center,
//                 child: const Text(
//                   'Balance ETB 367743',
//                 ),
//               ),
//               const SizedBox(
//                 width: 20,
//               ),
//               const SizedBox(
//                 width: 20,
//               ),
//               SmoothContainer(
//                 padding: const EdgeInsets.all(10),
//                 color: Colors.orange.shade200,
//                 smoothness: 1,
//                 side: const BorderSide(color: Colors.orange, width: 2),
//                 borderRadius: BorderRadius.circular(10),
//                 alignment: Alignment.center,
//                 child: const Text('Credit etb 0'),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//             ],
//           ),
//           sizedBox(height: 15),
//           SingleCustomerDetail(
//             field: 'Phone',
//             data: '09327362723',
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           SingleCustomerDetail(
//             field: 'Email',
//             data: 'sdcds@bdsj.cdsj',
//           ),
//           const SizedBox(
//             height: 15,
//           ),
//           SingleCustomerDetail(
//             field: 'Address',
//             data: 'sdbsd, csduycdsu, csdgcyusdgccs, uiicsg vdbuvdbvbyud',
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//         ],
//       ),
//     );
//   }
// }
