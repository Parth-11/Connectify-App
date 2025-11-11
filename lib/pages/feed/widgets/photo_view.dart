import 'package:flutter/material.dart';

class PhotoView extends StatelessWidget {
  final String imageUrl;
  final String tag;

  const PhotoView({super.key, required this.imageUrl, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black, elevation: 0),
      body: Center(
        child: Hero(
          tag: tag,
          child: InteractiveViewer(
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return const CircularProgressIndicator(color: Colors.white);
              },
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.broken_image, color: Colors.white, size: 48),
            ),
          ),
        ),
      ),
    );
  }
}
