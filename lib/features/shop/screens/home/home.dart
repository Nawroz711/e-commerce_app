import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/home/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/home_categories.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // TOP HEADER SECTION
                THomeAppBar(),
                SizedBox(height: TSizes.spaceBtwSections),

                // SEARCH BAR SECTION
                TSearchContainer(
                    text: 'search in store', icon: Iconsax.search_normal),
                SizedBox(height: TSizes.spaceBtwSections),

                // HEADINGS
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        title: 'Popular categories',
                        textColor: TColors.white,
                        showActionButton: false,
                      )
                    ],
                  ),
                ),

                // CATEGORIES
                THomeCategories()
              ],
            ),
          ),
        ],
      ),
    ));
  }
}


