import 'package:flutter/material.dart';
import 'package:my_inventory/core/controller/app_controller.dart';
import 'package:my_inventory/core/ui/profile/profile_single_detail.dart';

import '../../../product_list/ui/product_detail_single_description.dart';
import '../../constants/name_constants.dart';
import '../../constants/widget_constants.dart';
import '../../functions/profile/profile_functions.dart';
import '../../model/action_button_enum.dart';
import '../../styles/styles.dart';
import '../action_button.dart';
import '../elevated_card.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        sizedBox(height: 20),
        ElevatedCard(
          verticalPadding: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => onProfileEditPressed(),
                    child: Row(
                      children: [
                        Text(
                          editN,
                          style: TextStyle(
                              color: Colors.green.shade700,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        sizedBox(width: 20),
                        Icon(
                          Icons.edit,
                          color: Colors.green.shade700,
                          size: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: ProductDetailSingleDescription(
                      title: 'Date added',
                      description: getProfileDetailDateAdded(),
                      dataColor: Colors.green.shade800,
                      titleColor: Colors.grey.shade700,
                      textAlign: TextAlign.end,
                      titleFontSize: 17,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Card(
                  elevation: 5,
                  surfaceTintColor: Colors.white,
                  shape: smoothRectangleBorder(
                    radius: 15,
                    side: const BorderSide(
                      color: Colors.green,
                      width: .5,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (ctx, index) {
                        String title = profileTitles()[index];
                        return ProfileSingleDetail(
                          title: title,
                          data: getProfileTitleToData(title: title),
                          titleFontSize: 18,
                          dataFontSize: 17,
                          titleColor: Colors.green.shade800,
                          dataColor: Colors.grey.shade700,
                        );
                      },
                      separatorBuilder: (ctx, index) => sizedBox(height: 20),
                      itemCount: profileTitles().length,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ActionButton(
          redirectFrom: AppController.to.currentPages.last,
          actionButtonType: ActionButtonType.delete,
        ),
      ],
    );
  }
}
