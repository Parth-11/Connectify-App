import 'package:flutter/material.dart';

extension DebugBorders on Widget {
  Widget get borderDark => Container(
    decoration: BoxDecoration(border: Border.all()),
    child: this,
  );
  Widget get borderLight => Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.white)),
    child: this,
  );
}
