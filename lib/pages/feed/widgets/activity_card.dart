import 'package:connectify/pages/feed/widgets/activity_image_grid.dart';
import 'package:connectify/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String content;
  final String timeText;
  final int imageCount;

  const ActivityCard({
    super.key,
    required this.content,
    required this.imageCount,
    this.timeText = "Today, 8:49 PM",
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    radius: 24,
                    child: Icon(Icons.account_circle_outlined),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "John Doe",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              height: 0,
                            ),
                          ),
                          Text(
                            "@doe.john",
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        timeText,
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 16),
                    ],
                  ),
                ),
              ],
            ),
            if (content.isNotEmpty) ...[
              const SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: SizedBox()),
                  const SizedBox(width: 8),
                  Expanded(
                    flex: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          content,
                          maxLines: 6,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
            if (imageCount > 0) ...[
              const SizedBox(height: 12),
              ActivityImageGrid(imageCount: imageCount),
            ],
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        RoundedIconButton(
                          onTap: () {},
                          icon: Icons.favorite_border_rounded,
                          iconSize: 16,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "2.7K",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: Row(
                      children: [
                        RoundedIconButton(
                          onTap: () {},
                          icon: Icons.chat_bubble_outline_rounded,
                          iconSize: 16,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "128",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: RoundedIconButton(
                      onTap: () {},
                      icon: Icons.add,
                      iconSize: 16,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: RoundedIconButton(
                      onTap: () {},
                      icon: Icons.ios_share_outlined,
                      iconSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
