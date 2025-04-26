import 'package:flutter/material.dart';

import 'cover_lap_card.dart';

class CoverLapBody extends StatelessWidget {
  const CoverLapBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'https://images.unsplash.com/photo-1517336714731-489689fd1ca8',
      'https://images.unsplash.com/photo-1506765515384-028b60a970df',
      'https://images.unsplash.com/photo-1517336714731-489689fd1ca8',
      'https://images.unsplash.com/photo-1506765515384-028b60a970df',

      'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
      'https://images.unsplash.com/photo-1518770660439-4636190af475',
      'https://images.unsplash.com/photo-1517336714731-489689fd1ca8',
      'https://images.unsplash.com/photo-1506765515384-028b60a970df',

      'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
      'https://images.unsplash.com/photo-1518770660439-4636190af475',
      'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
      'https://images.unsplash.com/photo-1518770660439-4636190af475',
    ];

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 24,
                mainAxisSpacing: 24,
                childAspectRatio: 1.2,
              ),
              itemCount: images.length,
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
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.red,
                                ),
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
                            ),
                          ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: CoverLapCard(image: images[index]),
                  ),
                );
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
                              children:  [
                                Text(
                                  'إضافة Cover جديد',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Lemonada",
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: 500,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Colors.white,
                                    border:  Border.all(color: Color(0xff5F8BFA))
                                  ),
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    size: 40,
                                    color: Color(0xff5F8BFA),
                                  ),
                                ),
                                SizedBox(height: 20),
                                MaterialButton(
                                  onPressed: () {
                                  },
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
                ]
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
                  "إضافة غلاف",
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
