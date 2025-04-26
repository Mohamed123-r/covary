import 'package:covert_dashbord/views/home/widgets/cover_lap_body.dart';
import 'package:covert_dashbord/views/home/widgets/customer_body.dart';
import 'package:covert_dashbord/views/home/widgets/lap_body.dart';
import 'package:covert_dashbord/views/home/widgets/lap_card.dart';
import 'package:covert_dashbord/views/home/widgets/order_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';
import 'widgets/order_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String body = 'customer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEDF2),
      body: Container(
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: const Color(0xFFF2F3F9),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                spacing: 16,
                children: [
                  const Text(
                    'Covery',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lemonada',
                    ),
                  ),
                  SizedBox(width: 20),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        body = 'cuomer';
                      });
                    },

                    child: CircleAvatar(
                      radius: 33,
                      backgroundColor: body == 'cuomer' ? Colors.blue : Colors.white,
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          Assets.imagesFeather,
                        ), // حط صورتك هنا
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        body = 'lap';
                      });
                    },
                    child: CircleAvatar(
                      radius: 33,
                      backgroundColor: body == 'lap' ? Colors.blue : Colors.white,
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          Assets.imagesDesktop,
                        ), // حط صورتك هنا
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        body = 'order';
                      });
                    },
                    child: CircleAvatar(
                      radius: 33,
                      backgroundColor: body == 'order' ? Colors.blue : Colors.white,
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          Assets.imagesListBullets,
                        ), // حط صورتك هنا
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        body = 'customer';
                      });
                    },
                    child: CircleAvatar(
                      radius: 33,
                      backgroundColor: body == 'customer' ? Colors.blue : Colors.white,
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.white,
                        child: SvgPicture.asset(
                          Assets.imagesUser,
                        ), // حط صورتك هنا
                      ),
                    ),
                  ),

                  const Spacer(),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset(Assets.imagesBell), // حط صورتك هنا
                  ),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      Assets.imagesTest,
                    ), // حط صورتك هنا
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                margin: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFFFAFBFD),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      body == 'order'
                          ? 'الطلبات الجديدة'
                          : body == 'customer'
                          ? 'العملاء': body == 'customer'
                           ?
                          'الأجهزة' : "أغلفة اللابتوب",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lemonada',
                      ),
                    ),

                    const SizedBox(height: 20),

                    body == 'order'
                        ? const OrderBody()
                        : body == 'customer'
                        ? const CustomerBody()
                        : body == 'lap'
                        ? const LapBody()
                        : const CoverLapBody(),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
