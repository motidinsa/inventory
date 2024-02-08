import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_inventory/core/constants/widget_constants.dart';
import 'package:my_inventory/customer/ui/single_user_detail.dart';
import 'package:smooth_corner/smooth_corner.dart';

class CustomerDetail extends StatelessWidget {
  const CustomerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        shadowColor: Colors.grey,
        title: Text('Customer detail'),
         leading: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.arrowLeft,
              size: 20,
              color: Colors.teal,
            ),
            onPressed: () {

            },
          )
      ),
      body: ListView(
        children: [
          SmoothContainer(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            smoothness: 1,
            side: BorderSide(color: Colors.green.shade300, width: 2),
            borderRadius: BorderRadius.circular(15),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Enter customer name',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                      ),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 24,
                    color: Colors.teal,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothContainer(
                padding: EdgeInsets.all(10),
                color: Colors.grey.shade300,
                smoothness: 1,
                side: BorderSide(color: Colors.green.shade300, width: 2),
                borderRadius: BorderRadius.circular(10),
                child: Text(
                  'Balance ETB 367743',
                ),
                alignment: Alignment.center,
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 20,
              ),
              SmoothContainer(
                padding: EdgeInsets.all(10),
                color: Colors.orange.shade200,
                smoothness: 1,
                side: BorderSide(color: Colors.orange, width: 2),
                borderRadius: BorderRadius.circular(10),
                child: Text('Credit etb 0'),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          sizedBox(height: 15),
          SingleCustomerDetail(
            field: 'Phone',
            data: '09327362723',
          ),
          SizedBox(
            height: 15,
          ),
          SingleCustomerDetail(
            field: 'Email',
            data: 'sdcds@bdsj.cdsj',
          ),
          SizedBox(
            height: 15,
          ),
          SingleCustomerDetail(
            field: 'Address',
            data: 'sdbsd, csduycdsu, csdgcyusdgccs, uiicsg vdbuvdbvbyud',
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
