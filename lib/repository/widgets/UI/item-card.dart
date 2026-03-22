import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final List<Map<String, String>> items;
  const ItemCard({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          final item = items[index];
          final itemTitle = item['text'] as String;
          final itemImg = item['img'] as String;
          return Container(
            width: 75,
            margin: const EdgeInsets.only(right: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 72,
                  height: 78,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0XFFD9EBEB),
                  ),
                  // ClipRRect ensures the image follows the border radius
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Uihelper.CustomImage(img: itemImg),
                  ),
                ),
                const SizedBox(height: 4),
                Uihelper.CustomText(
                  text: itemTitle, // Newline helps fit narrow widths
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
