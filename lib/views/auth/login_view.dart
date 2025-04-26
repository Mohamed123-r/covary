import 'package:covert_dashbord/views/home/home_view.dart';
import 'package:flutter/material.dart';

import '../../components/app_button.dart';
import '../../components/app_colors.dart';
import '../../components/app_form_filed.dart';
import '../../components/app_text_styles.dart';
import '../../constant.dart';
import '../../generated/assets.dart';
import 'forget_password_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: direction,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(32),
          ),
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(
                        direction == TextDirection.rtl ? 3.1416 : 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Image.asset(
                        width: MediaQuery.of(context).size.width / 4.5,
                        Assets.imagesAuthShap,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "تسجيل الدخول",
                    style: AppTextStyles.style32W700(context),
                  ),
                  SizedBox(
                    height: 60,
                    width: double.infinity,
                  ),
                  AppInputTextFormField(
                    labelText: 'رقم الهاتف',
                    prefixIcon: Icon(
                      Icons.phone_outlined,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  AppPassInputTextFormField(
                    labelText: "كلمة المرور",
                    prefixIcon: Icon(
                      Icons.lock_outline,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgetPasswordView(),
                        ),
                      );
                    },
                    child: Text(
                      "هل نسيت كلمة المرور ؟",
                      style: AppTextStyles.style16W700(context).copyWith(
                          color: AppColors.accent,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.accent),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  AppButton(
                    text: "تسجيل الدخول",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeView(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
