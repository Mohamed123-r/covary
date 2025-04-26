import 'package:flutter/material.dart';
import '../../../components/app_colors.dart';
import '../../../components/app_form_filed.dart';
import '../../../components/app_text_styles.dart';
import 'pinput.dart';

class EnterPhoneSection extends StatelessWidget {
  const EnterPhoneSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      children: [
        Text(
          "إعادة تعيين كلمة المرور",
          style: AppTextStyles.style32W700(context),
        ),
        const SizedBox(height: 40),
        Text(
          'أدخل رقم الهاتف',
          style: AppTextStyles.style18W700(context).copyWith(
              decoration: TextDecoration.underline,
              decorationColor: AppColors.black),
        ),
        AppInputTextFormField(
          labelText: 'رقم الهاتف',
          prefixIcon: Icon(
            Icons.phone_outlined,
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}

class EnterCodeSection extends StatelessWidget {
  const EnterCodeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      children: [
        Text(
          "إعادة تعيين كلمة المرور",
          style: AppTextStyles.style32W700(context),
        ),
        const SizedBox(height: 40),
        Text(
          'أدخل Pin للتأكيد',
          style: AppTextStyles.style18W700(context).copyWith(
              decoration: TextDecoration.underline,
              decorationColor: AppColors.black),
        ),
        PinInputStyles.buildPinInput(
          onCompleted: (pin) {
            print("User entered PIN: $pin");
          },
        ),
        Text(
          'إعادة إرسال الرمز',
          style: AppTextStyles.style18W400(context).copyWith(
            color: AppColors.accent,
          ),
        ),
      ],
    );
  }
}

class EnterNewPassWordSection extends StatelessWidget {
  const EnterNewPassWordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 24,
        children: [
          Text(
            "أدخل كلمة المرور الجديدة",
            style: AppTextStyles.style32W700(context),
          ),
          const SizedBox(height: 40),
          AppPassInputTextFormField(
            labelText: 'كلمة المرور',
            prefixIcon: Icon(
              Icons.lock_outline,
            ),
          ),
          AppPassInputTextFormField(
            labelText: 'أدخل كلمة المرور الجديدة',
            prefixIcon: Icon(
              Icons.lock_outline,
            ),
          ),
        ],
      ),
    );
  }
}
