import 'package:flutter/material.dart';

OverlayEntry showOverlayWidget(context, widget) {
  OverlayEntry overlayEntry = OverlayEntry(
    builder: (c) => widget,
  );
  OverlayState? overlay = Overlay.of(context);
  if (overlay == null) {
    throw Exception("Can not show Overlay");
  }
  overlay.insert(overlayEntry);

  return overlayEntry;
}

hideOverlay(OverlayEntry entry) {
  entry.remove();
}
