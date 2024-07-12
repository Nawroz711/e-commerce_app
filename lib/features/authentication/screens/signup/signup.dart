import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/Login/widgets/form_divider.dart';
import 'package:t_store/features/authentication/screens/Login/widgets/login_footer.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // FORM

              TSignupForm(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),

              // DIVIDER
              FormDivider(dark: dark, dividerText: 'Or Signup With'),

              const SizedBox(height: TSizes.spaceBtwSections),

              // SOCIAL LOGINS
            const LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}


