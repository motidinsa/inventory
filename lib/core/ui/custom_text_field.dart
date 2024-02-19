import 'package:flutter/material.dart';
import 'package:my_inventory/core/constants/name_constants.dart';
import 'package:my_inventory/core/functions/customer_functions.dart';
import 'package:my_inventory/core/styles/styles.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final IconData leadingIconData;
  final String redirectFrom;

  const CustomTextField({
    super.key,
    required this.title,
    required this.leadingIconData,
    required this.redirectFrom,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController textEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  final Map<String,IconData> nameToIconTextField = {
    customerNameN():Icons.person,
    phoneNumberN():Icons.call,
    addressN():Icons.location_on,
    cityN():Icons.location_city,
    emailN():Icons.mail,
  };
  @override
  void initState() {
    super.initState();
    focusNode.addListener(
      () => onFocusChange(
        title: widget.title,
        hasFocus: focusNode.hasFocus,
        data: textEditingController.text,
        context: context,
        redirectFrom: widget.redirectFrom,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      focusNode: focusNode,

      decoration: InputDecoration(
        // fillColor: Colors.teal.shade50.withOpacity(.7),
        // filled: true,
        // disabledBorder: OutlineInputBorder(
        //     borderRadius: smoothBorderRadius(radius: 15),
        //     borderSide: BorderSide(
        //       color: Colors.blue,
        //       width: 1,
        //     )),
        border: OutlineInputBorder(
          borderRadius: smoothBorderRadius(radius: 15),
          // borderSide: BorderSide(
          //   color: Colors.yellow,
          //   width: 1,
          // )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: smoothBorderRadius(radius: 15),
          borderSide: const BorderSide(
            color: Colors.green,
            width: .8,
          ),
        ),
        prefixIcon: Icon(nameToIconTextField[widget.title]),
        // suffixIcon: hasSuffixIcon(
        //   title: widget.title,
        //   listIndex: widget.listIndex,
        // )
        //     ? GestureDetector(
        //   child: const Icon(
        //     Icons.arrow_drop_down_rounded,
        //     color: Colors.teal,
        //   ),
        //   onTap: widget.title == phoneNumberName()
        //       ? () => onSuffixIconPressed(
        //       context: context, listIndex: widget.listIndex)
        //       : null,
        // )
        //     : null,
        labelText: widget.title,
        // labelStyle: TextStyle(color: Colors.green),
        alignLabelWithHint: true,
        // contentPadding: EdgeInsets.only(left: 20),
        // focusColor: Colors.teal,
      ),
      // validator: (value) => mapValidation(
      //   value: textEditingController.text,
      //   title: widget.title,
      //   transactionType: addTransactionController
      //       .transactionModelList[widget.listIndex].value.transactionType,
      // ),
    );
  }
}
