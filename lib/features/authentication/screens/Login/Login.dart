import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/features/authentication/screens/Login/widgets/form_divider.dart';
import 'package:t_store/features/authentication/screens/Login/widgets/login_footer.dart';
import 'package:t_store/features/authentication/screens/Login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/Login/widgets/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(dark: dark),

              /// LOGIN FORM

              const LoginForm(),

              // DIVIDER
              FormDivider(dark: dark , dividerText: TTexts.orSignInWith.capitalize!,),

              const SizedBox(height: TSizes.spaceBtwSections),
              // FOOTER
              const LoginFooter()
            ],
          ),
        ),
      ),
    );
  }
}




