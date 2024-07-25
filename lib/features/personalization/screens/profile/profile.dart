import 'package:e_commerceapp/common/widgets/appbar/appbar.dart';
import 'package:e_commerceapp/common/widgets/images/E_circulair_image.dart';
import 'package:e_commerceapp/common/widgets/texts/section_heading.dart';
import 'package:e_commerceapp/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/image_strings.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';

import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text('Profile'),
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: ESizes.spaceBtwSections,
                    ),
                    ECirculairImage(
                      image: EImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              EColors.darkGrey),
                        ),
                        onPressed: () {},
                        child: Text(
                          'change profile screen',
                        )),
                  ],
                ),
                //profile information
              ),
              SizedBox(
                height: ESizes.spaceBtwItems / 2,
              ),
              Divider(),
              SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              SectionHeading(
                title: 'Profile Informations',
                showActionButton: false,
              ),
              SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              ProfileMenu(
                title: 'Name',
                value: 'Djouablia Mohamed',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'User Name',
                value: 'Djouablia_MoIslam',
                onPressed: () {},
              ),
              //Heading Personal Information
              Divider(),
              SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              SectionHeading(
                title: 'Personal Informations',
                showActionButton: false,
              ),
              SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              ProfileMenu(
                title: 'UserId',
                value: '1234',
                onPressed: () {},
              ),
                 ProfileMenu(
                title: 'Email',
                value: 'Djouablia.mohamed@univ-constantine2.dz',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Phone Number',
                value: '+213 699737751',
                onPressed: () {},
              ),
               ProfileMenu(
                title: 'Gender ',
                value: 'Male',
                onPressed: () {},
              ),
               ProfileMenu(
                title: 'Date of Birth',
                value: '21/12/1998',
                onPressed: () {},
              ),
              Divider(),
              SizedBox(height: ESizes.spaceBtwItems,),

              TextButton(onPressed: (){}, child: Text('Close Account',style: TextStyle(color: Colors.red),))
            
            ],
          ),
        ),
      ),
    );
  }
}
