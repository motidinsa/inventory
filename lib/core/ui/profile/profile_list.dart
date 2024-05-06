import 'package:flutter/material.dart';
import 'package:my_inventory/core/ui/profile/profile_mini_detail.dart';

import '../../functions/profile/profile_functions.dart';
import '../custom_text_field.dart';
import 'add_new_profile.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({super.key});

  @override
  Widget build(BuildContext context) {
    return isProfileListEmpty()==true
        ? const AddNewProfile()
        : ListView(
      children: [
        SizedBox(height: 15),
        if (isProfileListEmpty() != true)
           CustomTextField(
            title: getProfilePageName(),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: isProfileListEmpty()
              ? Center(
            child: Text(
              getProfileNoListName(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey.shade700),
            ),
          )
              : ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (ctx, index) => ProfileMiniDetail(
              name: getProfileMiniDetailName(index: index),
              index: index,iconData: Icons.person,
            ),
            itemCount:
            getProfileListLength(),
            separatorBuilder: (ctx, index) =>
                SizedBox(height: 12),
          ),
        ),
      ],
    );
  }
}
