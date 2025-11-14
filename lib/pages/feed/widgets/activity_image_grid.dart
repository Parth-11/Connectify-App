import 'package:flutter/material.dart';

import 'photo_view.dart';

class ActivityImageGrid extends StatelessWidget {
  final int imageCount;

  const ActivityImageGrid({super.key, required this.imageCount});

  @override
  Widget build(BuildContext context) {
    final List<String> sentPhotos = List.generate(
      imageCount,
      (i) => 'https://picsum.photos/seed/sent$i/600/600',
    );

    final firstRow = sentPhotos.take(3).toList();
    final remaining = sentPhotos.skip(3).take(3).toList();

    return Column(
      children: [
        Row(
          children: List.generate(
            firstRow.length,
            (index) => Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: _ImageTile(
                  url: firstRow[index],
                  tag: "${super.key.toString()}-$index",
                ),
              ),
            ),
          ),
        ),

        if (remaining.isNotEmpty) ...[
          const SizedBox(height: 4),
          Row(
            children: List.generate(
              remaining.length,
              (index) => Expanded(
                child: AspectRatio(
                  aspectRatio: remaining.length == 3 ? 1 : 1.5,
                  child: sentPhotos.length > 6 && index == 2
                      ? Stack(
                          children: [
                            _ImageTile(
                              url: remaining[index],
                              tag: "${super.key.toString()}-${3 + index}",
                            ),
                            GestureDetector(
                              onTap: () {
                                // TODO: Open Expanded view of activity
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white70,
                                ),
                                child: Center(
                                  child: Text(
                                    "+${sentPhotos.length - 6}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : _ImageTile(
                          url: remaining[index],
                          tag: "${super.key.toString()}-${3 + index}",
                        ),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _ImageTile extends StatelessWidget {
  final String url;
  final String tag;

  const _ImageTile({required this.tag, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => PhotoView(imageUrl: url, tag: tag),
            ),
          );
        },
        child: Hero(
          tag: tag,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              url,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => Container(
                color: Colors.grey[300],
                child: const Icon(Icons.image),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
