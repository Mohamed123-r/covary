import 'package:covert_dashbord/components/app_form_filed.dart';
import 'package:covert_dashbord/views/home/widgets/customer_card.dart';
import 'package:flutter/material.dart';

import '../../../generated/assets.dart';
import 'lap_card.dart';
import 'order_card.dart';

class LapBody extends StatelessWidget {
  const LapBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 24,
                mainAxisSpacing: 24,
                childAspectRatio: 1,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return LapCard();
              },
            ),
            Positioned(
              bottom: 12,
              child: MaterialButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          backgroundColor: Colors.white,
                          title: Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              icon: const Icon(Icons.close, color: Colors.red),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          content: Container(
                            margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'إضافة جهاز جديد',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Lemonada",
                                  ),
                                ),
                                SizedBox(height: 20),
                                AppInputTextFormField(
                                  labelText: "أدخل إسم الجهاز :",
                                ),
                                SizedBox(height: 20),
                                MaterialButton(
                                  onPressed: () {},
                                  color: Color(0xff5F8BFA),
                                  minWidth: 200,
                                  height: 56,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Text(
                                    "موافق",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Lemonada',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                  );
                },
                color: Color(0xff5F8BFA),
                minWidth: 200,
                height: 56,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  "إضافة جهاز",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Lemonada',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
