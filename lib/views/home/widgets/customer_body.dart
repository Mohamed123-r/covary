import 'package:covert_dashbord/components/show_data_widget.dart';
import 'package:covert_dashbord/views/home/widgets/customer_card.dart';
import 'package:flutter/material.dart';

import '../../../generated/assets.dart';
import 'order_card.dart';

class CustomerBody extends StatelessWidget {
  const CustomerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 24,
            mainAxisSpacing: 24,
            childAspectRatio: 1,
          ),
          itemCount: 8,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
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
                      child: SingleChildScrollView(
                        child: Column(
                          spacing: 12,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'تفاصيل العميل',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Lemonada",
                              ),
                            ),
                            SizedBox(height: 20),
                            ShowData(
                              title: "الإسم :",
                              value: "Mohammed Ali Khaled",
                            ),
                            ShowData(
                              title: "الإيميل :",
                              value: "mohammed123@gmail.com",
                            ),
                            ShowData(
                              title: "رقم الهاتف",
                              value: "+20 0102873653432456",
                            ),
                            ShowData(
                              title: "المدينة :",
                              value: "سوهاج",
                            ),
                            ShowData(
                              title: "الحي :",
                              value: "أخميم",
                            ),
                            ShowData(
                              title: "الشارع :",
                              value: "الزهور",
                            ),
                            ShowData(
                              title: "رقم المبني :",
                              value: "2",
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: CustomerCard(),
            );
          },
        ),
      ),
    );
  }
}
