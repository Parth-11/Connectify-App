import 'package:flutter/material.dart';

import 'widgets/activity_card.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ActivityCard(
              content:
                  "Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match! Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match! Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match! Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match!",
              imageCount: 0,
            ),
            ActivityCard(content: "", imageCount: 1),
            ActivityCard(
              content:
                  "Had a great workout at the GYM today. Was lovely to meet @heyjames. He was lovely to work with and a good match!",
              imageCount: 2,
            ),
            ActivityCard(content: "", imageCount: 4),
            ActivityCard(content: "", imageCount: 5),
            ActivityCard(content: "", imageCount: 7),
          ],
        ),
      ),
    );
  }
}
