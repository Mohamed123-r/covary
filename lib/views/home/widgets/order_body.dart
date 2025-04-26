import 'package:covert_dashbord/components/show_data_widget.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../generated/assets.dart';
import 'order_card.dart';

class OrderBody extends StatelessWidget {
  const OrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                          child: Column(
                            children: [
                              Text(
                                'تفاصيل الطلب',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Lemonada",
                                ),
                              ),
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Image.asset(
                                      Assets.imagesLaptop,
                                      height: 400,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      spacing: 12,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        ShowData(
                                          title: "نوع الجهاز :",
                                          value: "Dell altitude 8050",
                                        ),
                                        ShowData(
                                          title: "نوع المادة الخام :",
                                          value: "بلاستيك مطاطي",
                                        ),
                                        ShowData(title: "الكمية :", value: "1"),
                                        ShowData(
                                          title: "التكلفة :",
                                          value: "32 جنية",
                                        ),

                                        const SizedBox(height: 30),
                                        const Text(
                                          'جزء الغلاف:',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          textDirection: TextDirection.rtl,
                                        ),

                                        Directionality(
                                          textDirection: direction,
                                          child: Row(
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Checkbox(
                                                    value: true,
                                                    activeColor: Colors.green,
                                                    onChanged: (v) {},
                                                  ),
                                                  const Text(
                                                    'ظهر اللابتوب',
                                                    textDirection:
                                                        TextDirection.rtl,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 20,),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Checkbox(
                                                    value: true,
                                                    activeColor: Colors.green,
                                                    onChanged: (v) {},
                                                  ),
                                                  const Text(
                                                    'قاعدة اللابتوب',
                                                    textDirection:
                                                        TextDirection.rtl,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              MaterialButton(
                                onPressed: () {},
                                color: Color(0xff5F8BFA),
                                minWidth: 200,
                                height: 56,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text(
                                  "نقل للتجهيز",
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
              child: OrderCard(),
            );
          },
        ),
      ),
    );
  }
}
