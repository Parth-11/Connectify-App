import 'package:connectify/pages/feed/feed.dart';
import 'package:connectify/pages/inbox/message_page.dart';
import 'package:flutter/material.dart';

class AppDrawerController {
  final Map<String, dynamic> tiles = {
    "Feed": [Icons.home_rounded, () => FeedPage()],
    "Hubs": [Icons.hub_outlined, () => FeedPage()],
    "Chat": [Icons.message_rounded, () => MessagePage()],
  };

  final ValueNotifier<bool> isOpen = ValueNotifier(false);
  final ValueNotifier<String> selected = ValueNotifier("Feed");

  void open() => isOpen.value = true;
  void close() => isOpen.value = false;
  void toggle() => isOpen.value = !isOpen.value;

  void select(String tile) => selected.value = tile;
  Widget buildSelected() => tiles[selected.value]![1]();
}

final AppDrawerController drawerController = AppDrawerController();
