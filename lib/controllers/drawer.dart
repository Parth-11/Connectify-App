import 'package:flutter/material.dart';

class AppDrawerController {
  final ValueNotifier<bool> isOpen = ValueNotifier(false);

  void open() => isOpen.value = true;
  void close() => isOpen.value = false;
  void toggle() => isOpen.value = !isOpen.value;
}

final AppDrawerController drawerController = AppDrawerController();
